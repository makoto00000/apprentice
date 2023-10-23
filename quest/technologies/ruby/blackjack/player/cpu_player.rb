# frozen_string_literal: true

require_relative "./player.rb"

class CpuPlayer < Player
  # CPUのターンを実行するメソッド（player_actionをオーバーライド）
  def player_action(deck)
    # 得点が17以上となるまでカードを引く
    counter = 1
    while isDraw? do
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
    def isDraw?
      @score <= 17
    end
end
