# frozen_string_literal: true

require_relative "../card/deck.rb"
require_relative "../card/card.rb"

class Player
  attr_reader :name, :score, :hand_cards
  def initialize(name)
    @name = name
    @score = 0
    @hand_cards = []
  end
  # デッキからカードを引くメソッド（Deckクラスのdraw_card呼び出し）
  def draw_card(deck)
    @hand_cards << deck.draw_card
    self.calc_score #引いたカードを含めて得点を計算
    self.re_calc_ace if self.bust? #バーストした場合Aカードを再計算
  end
  # バースト判定用boolean
  def bust?
    @score > 21
  end

  private
    # 手札のカードの得点を計算するメソッド
    def calc_score
      @score = 0
      @hand_cards.each do |card|
        @score += card.score
      end
    end
    # Aカードを再計算するメソッド
    def re_calc_ace
      ace_card = @hand_cards.find { |card| card.score == 11 }
      if !ace_card.nil?
        ace_card.re_calc_score
        self.calc_score
      end
    end
end
