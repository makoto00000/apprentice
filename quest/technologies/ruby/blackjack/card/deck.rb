# frozen_string_literal: true

require_relative "./card.rb"

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    Card::SUIT.each do |suit|
      Card::NUM.each do |num|
        card = Card.new(suit, num)
        @cards << card
      end
    end
    @cards.shuffle!
  end
  # カードをドローするメソッド（配列の先頭のカードを切り取って返す）
  def draw_card
    @cards.shift
  end
end
