# create class
class Player
  attr_accessor :gold_points, :health_points, :lives, :score
  # instance variables
  def initialize
    @gold_points = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

# instance methods
  def do_battle
    @health_points -= 1
    if health_points == 0
      @lives -= 1
      if lives == 0
        def restart
          @gold_points = 0
          @health_points = 10
          @lives = 5
          @score = 0
        end
        @health_points = 10
      end
    end
  end

  def level_up
    @lives += 1
  end

  def collect_treasure(number)
    @gold_points += number
    if gold_points >= 10
      @score += 1
      @gold_points -= 10
      if score == 10
        level_up
        @score -= 10
      end
    end
  end
end
