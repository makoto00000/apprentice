# frozen_string_literal: true

class Card
  SUIT = %W(スペード クラブ ハート ダイヤ).freeze
  NUM = [*(2..10), "J", "Q", "K", "A"].freeze

  attr_reader :suit, :num, :score
  def initialize(suit, num)
    @suit = suit
    @num = num
    @score
    calc_score() # カードの得点付けはここでしか実行しない
  end

  # Aの得点を11で計算したときにバーストする場合実行
  def re_calc_score
    if @score == 11
      @score = 1
    end
  end

  private
    # カードの得点を計算するメソッド
    def calc_score
      case @num
      when "J", "Q", "K"
        @score = 10
      when "A"
        @score = 11
      else
        @score = @num
      end
    end
end
