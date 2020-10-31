require "pry"

class CashRegister
    attr_accessor :total, :discount, :last_transaction, :items 

    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []

    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @last_transaction = price * quantity
        quantity.times do 
            @items << title
        end
    end

    def apply_discount
        #binding.pry 
        @total = @total - (@discount.to_f / 100) * @total
        #binding.pry
        if @discount != 0
            "After the discount, the total comes to $#{@total.to_i}."    
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction    
    end 

end
