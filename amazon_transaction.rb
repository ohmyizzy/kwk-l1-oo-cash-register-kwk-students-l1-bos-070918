# Code your cash register here!

class AmazonTransaction
  
  attr_accessor :total, :items, :discount, :prime
  attr_reader :last_transaction_action
  
  def initialize(discount = 0)
    @total = 0 
    @items = []
    @discount = discount
  end 
  
  def total
    @total
  end
  
  def add_item(item, price, quantity=1)
    #info_array = [price, quantity]
    @items << item
    @total += (price * quantity)
  end
  
  def apply_discount
    if @discount != 0
      @total *= 1-(@discount/100.0)
      rounded_total = "%.2f" % @total.to_s
      return "After the discount, the total comes to $#{rounded_total}" 
    else
      return "There is no discount to apply."
    end 
  end
  
  def items
    @items
  end
  
  def cancel_order
    
  end 
  
end 


