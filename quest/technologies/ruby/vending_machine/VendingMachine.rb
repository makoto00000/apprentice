require './Item.rb'
require './DrinkItem.rb'
require './CupItem.rb'
require './SnackItem.rb'

class VendingMachine

  def initialize(manufacturer_name)
    @manufacturer_name = manufacturer_name
    @deposit_coin = 0
    @cup = 0
  end

  def press_button(item)
    if @deposit_coin >= item.price
      if (item.class == CupItem && @cup != 0) || item.class != CupItem
        if item.class == CupItem
          @cup -= 1
        end
        @deposit_coin -= item.price
        print item.name
      end
    end
  end

  def deposit_coin(coin)
    if coin == 100
      @deposit_coin += coin
    end
  end

  def add_cup(cup)
    @cup += cup
  end

  private
  def press_manufacturer_name
    print @manufacturer_name
  end

end

hot_cup_coffee = CupItem.new('hot cup coffee', 100, 'hot')
cider = DrinkItem.new('cider', 100)
snack = SnackItem.new('potato chips', 150)
vending_machine = VendingMachine.new('サントリー')
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(cider)

puts vending_machine.press_button(hot_cup_coffee)
vending_machine.add_cup(1)
puts vending_machine.press_button(hot_cup_coffee)

puts vending_machine.press_button(snack)
vending_machine.deposit_coin(100)
vending_machine.deposit_coin(100)
puts vending_machine.press_button(snack)