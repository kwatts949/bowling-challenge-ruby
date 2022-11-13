class Bowling
  def initialize
    @rolls = []
    @roll_number = 1
    @score = []
  end

  def frame(pins)
    if pins.include?(10)
      @rolls << pins
      @roll_number += 1
      if strikescore != nil
        @score << strikescore
      end
    elsif pins.sum == 10
      @rolls << pins
      @roll_number += 1
      @score << sparescore
    else
      @rolls << pins
      @score << pins
      @roll_number += 1
      @roll_number
    end
  end

  def sparescore
    return 10 
    # plus score from next first roll of frame
  end

  def strikescore
    if @rolls.length == 10
      return 300
    end
    # plus score from first and second roll of next frame
  end

  def current_score
    @score.flatten.sum
  end
end
