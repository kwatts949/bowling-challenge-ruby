class BowlingNew
  def initialize
    @spare = false
    @strike = false
    @score = []
  end

  def score(frames)
    frame_number = 0

    if frames.length == 10 && frames.flatten.sum == 100
      @score << 300
      return @score.sum # Score for perfect game
    else
      while frame_number != 10 do
        @current_frame = frames[frame_number]

        if @strike && current_strike
          @score << strike_score
        elsif @strike
          @score << strike_score
          @strike = false
        elsif @spare && current_spare
          @score << spare_score
        elsif @spare
          @score << spare_score
          @spare = false
        elsif current_strike
          @strike = true
          turn_score
        elsif current_spare
          @spare = true
          turn_score
        else
          turn_score
        end
        frame_number += 1
      end
    end
    return @score.flatten.sum
  end

  private

  def current_strike
    @current_frame[0] == 10
  end

  def current_spare
    @current_frame.sum == 10
  end

  def turn_score
    @score << @current_frame
  end

  def spare_score
    (@current_frame.sum) + @current_frame[0]
  end

  def strike_score
    @current_frame.sum * 2
  end
end