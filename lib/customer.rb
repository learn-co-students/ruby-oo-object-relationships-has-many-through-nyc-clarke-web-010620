class Customer
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    attr_accessor :name, :age

    @@all = []

    def self.all
        @@all
    end


    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.customer == self
        end
    end

    def waiters
        self.meals.map do |meal|
            meal.waiter
        end
    end



end