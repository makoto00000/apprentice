require_relative './item.rb'
require_relative './drink_item.rb'
require_relative './cup_item.rb'
require_relative './snack_item.rb'
require_relative './vending_machine.rb'

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