# frozen_string_literal: true

# vendingmachine/vending_machine.rb
class VendingMachine
  def initialize(manufacturer_name)
    @manufacturer_name = manufacturer_name
    @deposit_coin = 0
    @cup = 0
  end

  def press_button(item)
    return unless @deposit_coin >= item.price
    return unless (item.instance_of?(CupItem) && @cup != 0) || item.class != CupItem

    @cup -= 1 if item.instance_of?(CupItem)
    @deposit_coin -= item.price
    print item.name
  end

  def deposit_coin(coin)
    return unless coin == 100

    @deposit_coin += coin
  end

  def add_cup(cup)
    @cup += cup
  end

  private

  def press_manufacturer_name
    print @manufacturer_name
  end
end
