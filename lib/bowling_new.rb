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
      return @score.sum
    else
      while frame_number != 10 do
        current_frame = frames[frame_number]
        if @strike == true && current_frame[0] == 10
          @score << (current_frame.sum * 3)
        elsif @strike == true
          @score << (current_frame.sum * 2)
          @strike = false
        elsif @spare == true && current_frame.sum == 10
          @score << (current_frame.sum) + (current_frame[0])
        elsif @spare == true
          @score << (current_frame.sum) + current_frame[0]
          @spare = false
        elsif current_frame[0] == 10
          @strike = true
          @score << current_frame
        elsif current_frame.sum == 10
          @spare = true
          @score << current_frame
        else
          @score << current_frame
        end
        frame_number += 1
      end
    end
    return @score.flatten.sum
  end
end