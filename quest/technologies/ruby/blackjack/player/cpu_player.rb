# frozen_string_literal: true

require_relative "./player.rb"

class CpuPlayer < Player
  def player_action(deck)
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
end
