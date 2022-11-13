class Bowling
  def initialize
    @score = []
    @strike = false
    @spare = false
  end

  def total(frame)
    frame.each do |frame|
      if frame[0] == 10 || frame[1] == 10 # Strike
        @score << frame # + next frame.sum
        @strike = true
      elsif @strike == true
        @score << frame * 2
      elsif frame.sum == 10 # Spare
        @spare == true
        @score << frame  # + next frame[0]
      elsif @spare == true
        @score << frame[0]
      else 
        @score << frame 
      end
    end
    return @score.flatten.sum
  end

  def strike

  end
end
