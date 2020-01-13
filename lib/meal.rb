class Meal
    def initialize (waiter, customer, total, tip=nil)
        @waiter = waiter
        @customer = customer
        @total = total 
        @tip = tip
        @@all << self
    end

    attr_accessor :waiter, :customer, :total, :tip

    @@all = []

    def self.all
        @@all
    end
    


end