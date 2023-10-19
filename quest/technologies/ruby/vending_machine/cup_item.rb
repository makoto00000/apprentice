# frozen_string_literal: true

# vendingmachine/cup_item.rb
class CupItem < Item
  def initialize(name, price, temperature)
    super(name, price)
    @temperature = temperature
  end
end
