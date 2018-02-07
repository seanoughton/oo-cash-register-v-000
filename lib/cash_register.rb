
class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
  end


  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @item_array << title
        i+=1
      end
    else
      @item_array << title
    end
    @last_transaction_amount = @total += price*quantity
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
    @item_array
  end

  def void_last_transaction()
  end

end
