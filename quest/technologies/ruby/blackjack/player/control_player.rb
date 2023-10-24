# frozen_string_literal: true

class ControlPlayer < Player
  attr_accessor :all_players
  def initialize(config)
    @config = config # Configクラスを受け取る
    super(@config.player_name)
    @all_players # Gameクラスinitializeの中で値を入れる
  end

  # プレイヤーのターンを実行するメソッド
  def player_action(deck)
    puts "#{open_score}"

    select_surrender() # サレンダーを実行するか選択
    return if @is_surrender

    select_doubledown(deck) # ダブルダウンを実行するか選択
    return if @is_doubledown

    select_split(@all_players) # スプリットを実行するか選択

    # ヒット or スタンドを選択
    draw_counter = hand_cards.length - 1
    loop do
      puts "カードを引きますか？( Y / N )"
      case gets.chomp
      when "Y" # Yが選択されたとき
        draw_counter += 1
        draw_card(deck)
        open_card(draw_counter)
        puts "#{open_score}"
        # バーストしたときの処理
        if bust?
          puts "バーストしました。"
          break
        end
      when "N" # Nが選択されたとき
        break
      else
        puts "( Y / N )で入力してください"
      end
    end
  end

  private
    # サレンダーを実行するメソッド
    def select_surrender
      if @config.is_surrender
        puts "サレンダーを実行しますか？( Y / N )"
        case gets.chomp
        when "Y" # Yが選択されたとき
          @is_surrender = true
          puts "このゲームを降ります。"
        when "N" # Nが選択されたとき

        else
          puts "( Y / N )で入力してください"
        end
      end
    end

    # ダブルダウンを実行するメソッド
    def select_doubledown(deck)
      if @config.is_doubledown
        puts "ダブルダウンを実行しますか？( Y / N )"
        case gets.chomp
        when "Y" # Yが選択されたとき
          @is_doubledown = true
          draw_card(deck)
          open_card(@hand_cards.length - 1)
          # バーストしたときの処理
          if bust?
            puts "#{open_score} バーストしました。"
          end
        when "N" # Nが選択されたとき

        else
          puts "( Y / N )で入力してください"
        end
      end
    end

    # スプリットを実行するメソッド
    def select_split(all_players)
      if @config.is_split && !@is_split && @hand_cards[0].num == @hand_cards[1].num
        puts "カードの数字が同数です。"
        puts "スプリットを実行しますか？( Y / N )"
        case gets.chomp
        when "Y" # Yが選択されたとき
          # 二番目の手札を一人のプレイヤーとして扱う
          split_player = ControlPlayer.new("#{@name}の手札2", @config)
          @name = "#{@name}の手札1"
          # !以下の処理でのみsplit_playerのhand_cardsとis_splitに変更を加える。
          split_player.hand_cards << @hand_cards.pop # 手札の最後（2枚目）を渡す
          split_player.is_split = true # 2枚目のカードを引いたときにスプリットを選択させないために
          all_players.insert(all_players.index(self) + 1, split_player) # プレイヤーの次に分けたプレイヤー（手札）を挿入
        when "N" # Nが選択されたとき

        else
          puts "( Y / N )で入力してください"
        end
      end
    end
end
