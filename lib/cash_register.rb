
class CashRegister

  attr_accessor :total, :discount
  @@all = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title,price,quantity = 1)
    @total += price*quantity
    @@all << title
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
    @@all
  end

end
