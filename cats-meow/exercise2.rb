# define class Cat
class Cat
  attr_accessor :name, :preferred_food, :meal_time

# instance variables
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  # instance methods
  def eats_at
    return "#{@meal_time}PM"
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end

end
# create 2 instances of class Cat
honey = Cat.new("honey","chicken",6)
baby = Cat.new("baby","beef",8)
puts "text"
puts honey.meow
puts baby.meow
