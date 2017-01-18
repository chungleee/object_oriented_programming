# create class
class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings

  # instance variables
  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  # instance methods
  def quota
    50 + @experience / 2
  end

  def deliver(start_house, end_house)
    @experience += end_house - start_house
    number = end_house - start_house + 1
    if number > quota
      @earnings = (quota * 0.25) + ((number - quota) * 0.50)
      if number < quota
        @earnings -= 2
      end
    end

  end

  def report
    puts "I'm #{name}, I've delivered #{experience} and I've earned #{earnings} so far!"
  end
end
