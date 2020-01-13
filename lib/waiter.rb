class Waiter
    def initialize(name,years)
        @name = name
        @yrs_experience = years
        @@all << self
    end

    @@all = []
    attr_accessor :name, :yrs_experience

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.waiter == self
        end
    end

    def customers
        self.meals.map do |meal|
            meal.customer
        end
    end

    def best_tipper
        meal_with_highest_tip = self.meals.max_by do |meal|
            meal.tip
        end
        meal_with_highest_tip.customer
    end






end