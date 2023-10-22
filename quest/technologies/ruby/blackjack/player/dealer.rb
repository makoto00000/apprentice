# frozen_string_literal: true

class Dealer < Player
  # ディーラーの初期行動をまとめたメソッド（player_startをオーバーライド）
  def player_start(deck)
    draw_card(deck)
    open_card(0)
    draw_card(deck)
    puts "ディーラーの引いた2枚目のカードはわかりません。"
  end

  # ディーラーのターンを実行するメソッド（player_actionをオーバーライド）
  def player_action(deck)
    # 2枚目のカードを公開
    puts "#{@name}の引いた2枚目のカードは#{@hand_cards[1].suit}の#{@hand_cards[1].num}でした。"
    puts open_score
    # 得点が17以上となるまでカードを引く
    counter = 1
    while self.score < 17 do
      counter += 1
      draw_card(deck)
      open_card(counter)
      puts open_score
      # バーストしたときの処理
      if bust?
        puts "バーストしました。"
        break
      end
    end
  end

  private
    # カードを引き続けるか判定するboolean
    def draw?
      @score <= 17
    end
end
