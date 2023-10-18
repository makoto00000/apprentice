class CupItem < Item
  def initialize(name, price, temperature)
    super(name, price)
    @temperature = temperature
  end
end