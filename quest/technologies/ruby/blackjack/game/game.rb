# frozen_string_literal: true

require_relative "../player/player.rb"
require_relative "../player/dealer.rb"
require_relative "../card/deck.rb"

class Game
  def initialize
    @deck = Deck.new
    @player = Player.new("あなた")
    @players = [@player]
    @dealer = Dealer.new("ディーラー")
    @player_input = false
    self.game_start
  end
  # ゲーム実行メソッド
  def game_start
    puts "ブラックジャックを開始します。"
    # プレイヤーの初期行動
    self.player_start(@player)
    # ディーラーの初期行動
    self.dealer_start(@dealer)
    # プレイヤーのターン
    self.player_turn(@player)
    # ディーラーのターン
    self.dealer_turn(@dealer)
    # 勝敗判定
    self.jadge(@players, @dealer)
    puts "ブラックジャックを終了します。"
  end

  private
    # カードを引くメソッド
    def draw_card(player)
      player.draw_card(@deck)
    end

    # オープンしたカードを公開するメソッド
    def open_card(player, i)
      puts "#{player.name}の引いたカードは#{player.hand_cards[i].suit}の#{player.hand_cards[i].num}です。"
    end

    # 現在の得点を表示するメソッド
    def open_score(player)
      "#{player.name}の現在の得点は#{player.score}です。"
    end

    # プレイヤーの初期行動をまとめたメソッド
    def player_start(player)
      self.draw_card(player)
      self.open_card(player, 0)
      self.draw_card(player)
      self.open_card(player, 1)
    end

    # ディーラーの初期行動をまとめたメソッド
    def dealer_start(dealer)
      self.draw_card(dealer)
      self.open_card(dealer, 0)
      self.draw_card(dealer)
      puts "ディーラーの引いた2枚目のカードはわかりません。"
    end

    # プレイヤーのターンを実行するメソッド
    def player_turn(player)
      counter = 1
      loop do
        puts "#{open_score(player)} カードを引きますか？（Y / N）"
        case gets.chomp
        when "Y" # Yが選択されたとき
          counter += 1
          draw_card(player)
          open_card(player, counter)

          # バーストしたときの処理
          if player.bust?
            puts "#{open_score(player)} バーストしました。"
            break
          end
        when "N" # Nが選択されたとき
          break
        else
          puts "(Y / N)で入力してください"
        end
      end
    end

    # ディーラーのターンを実行するメソッド
    def dealer_turn(dealer)
      # 2枚目のカードを公開
      puts "#{dealer.name}の引いた2枚目のカードは#{dealer.hand_cards[1].suit}の#{dealer.hand_cards[1].num}でした。"
      puts open_score(dealer)

      # 得点が17以上となるまでカードを引く
      counter = 1
      while dealer.score < 17 do
        counter += 1
        self.draw_card(dealer)
        self.open_card(dealer, counter)
        puts open_score(dealer)
        # バーストしたときの処理
        if dealer.bust?
          puts "バーストしました。"
          break
        end
      end
    end

    # 勝敗判定をするメソッド
    def jadge(players, dealer)
      # プレイヤーとディーラーの得点を表示
      all_players = [*players, dealer]
      all_players.each do |player|
        puts "#{player.name}の得点は#{player.score}です。"
      end

      winners = [] # 勝利プレイヤーを格納
      drawers = [] # 引き分けプレイヤーを格納

      # バーストしているプレイヤーがいない場合
      if all_players.select { |player| player.bust? }.nil?
        winners = players.select { |player| player.score > dealer.score }
        drawers = players.select { |player| player.score == dealer.score }

      # バーストしているプレイヤーがいる場合
      else

        # ディーラーがバーストしている場合（バーストしていないプレイヤーが勝利）
        if dealer.bust?
          winners = players.select { |player| !player.bust? }

        # ディーラーがバーストしていない場合
        # （バーストしていない かつ ディーラーより得点の高いプレイヤーが勝利
        else
          winners = players.select { |player| !player.bust? && player.score > dealer.score }
          drawers = players.select { |player| !player.bust? && player.score == dealer.score }
        end
      end
      # 勝利、引き分け以外のプレイヤーを敗北プレイヤーとする
      losers = players - winners - drawers

      winners.each do |player|
        puts "#{player.name}の勝ちです！"
      end
      losers.each do |player|
        puts "#{player.name}の負けです..."
      end
      drawers.each do |player|
        puts "#{player.name}は引き分けです"
      end
    end
end
