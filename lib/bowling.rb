class Bowling
  def initialize
    @score = []
    @frame = 1
  end

  def frame(first, second)
    if first == 10
      strike
    elsif first + second == 10
      spare
    else
      @score << first
      @score << second
    end
  end

  def current_score
    @score.sum
  end
end


