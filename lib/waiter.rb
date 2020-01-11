class Waiter
    attr_reader :name, :experience
    @@all = []
    def initialize (name, experience)
        @name = name
        @experience = experience
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select{|meal| meal.waiter == self}
    end

    def best_tipper
        tip = 0
        best_tipper = []
        Meal.all.select do |meal|
            if meal.tip > tip
                tip = meal.tip
                best_tipper = meal.customer
            end
        end
        best_tipper
    end

end