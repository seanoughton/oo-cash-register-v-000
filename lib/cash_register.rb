
class CashRegister

  attr_accessor :total, :discount, :items

  @items = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title,price,quantity = 1)
    self.items << "test"
    @total += price*quantity
  end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items()
    @items
  end

end
