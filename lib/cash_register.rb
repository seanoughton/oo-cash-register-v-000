
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title,price,quantity = 1)
    @total += price*quantity
  end

  def apply_discount()
    @discount = @discount/100.to_f
    @total = @total - (@total * (@discount))
    "After the discount, the total comes to $#{@total.to_i}."
  end

end
