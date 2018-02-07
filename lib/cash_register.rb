
class CashRegister

  attr_accessor :total, :discount
  #attr_reader :item_array



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
  end


  def add_item(title,price,quantity = 1)
    #you need an array to push title onto, the array is an instance variable
    #you need to push title onto that array
    #@item_array << title
    if quantity>1
      i=0
      while i<quantity
        @item_array << title
        i+=1
      end
    else
      @item_array << title
    end
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
    #you need to return the array of items
    #@item_array = []
    @item_array
  end

end
