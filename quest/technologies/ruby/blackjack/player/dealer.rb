# frozen_string_literal: true

class Dealer < Player
  def initialize(name)
    super(name)
  end
  # カードを引き続けるか判定するboolean
  def draw?
    @score <= 17
  end
end
