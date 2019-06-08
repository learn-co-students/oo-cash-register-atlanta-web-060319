require "pry"

class CashRegister
    attr_accessor :discount, :total
    
    
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @transactions = []
    end
    
    
    def add_item(title, price, quantity = 1)
        total_cost = (price * quantity)
        self.total = self.total + (total_cost)
        self.items.fill(title, items.length, quantity)
        self.transactions << total_cost
    end

    
    def apply_discount
        if discount == 0 
            "There is no discount to apply."
        else
        self.total = self.total - ((self.total * discount) / 100)
        "After the discount, the total comes to $#{self.total}."
        end
    end


    def items
        @items
    end

    def transactions
        @transactions
    end

    def void_last_transaction
        most_recent = self.transactions.pop
        self.total = self.total - most_recent
    end


    



end