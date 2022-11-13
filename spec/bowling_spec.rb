require 'bowling'

RSpec.describe 'bowling scorecard' do

  context 'no spare or strikes' do
    it 'returns a score of 6 for a single frame' do
      bowling = Bowling.new
      expect(bowling.total([[3, 3]])).to eq 6
    end

    it 'returns a score of 0' do
      bowling = Bowling.new
      expect(bowling.total([[0, 0]])).to eq 0
    end

    it 'returns a score of 24 after 6 frames' do
      bowling = Bowling.new
      expect(bowling.total([[2, 6], [3, 4], [7, 2]])).to eq 24
    end
  end

  context 'score of 0 in all frames' do  
    it 'returns a score of 0 if no pins are knocked down in 10 frames' do
      bowling = Bowling.new
      expect(bowling.total([[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]])).to eq 0
    end
  end

  context 'when there is a strike' do
    it 'returns a perfect score if a strike is scored in one frame' do
      bowling = Bowling.new
      expect(bowling.total([[10, 0]])).to eq 10
    end

    it 'returns a the correct score if a strike is scored in the 1st frame' do
      bowling = Bowling.new
      expect(bowling.total([[10, 0], [2, 5]])).to eq 24
    end

    it 'returns a the correct score if a strike is scored in the 2nd frame' do
      bowling = Bowling.new
      expect(bowling.total([[6, 3], [0, 10], [9, 0]])).to eq 37
    end

    it 'returns a the correct score if a strike is scored in the 2 consecutive frames frame' do
      bowling = Bowling.new
      expect(bowling.total([[0, 10], [10, 0]])).to eq 30
    end

    it 'returns a perfect score if a strike is scored in each frame' do
      bowling = Bowling.new
      expect(bowling.total([[10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0]])).to eq 300
    end
  end

  context 'when there is a spare' do
    it 'returns a spare' do
      bowling = Bowling.new
      expect(bowling.total([[6,4]])).to eq 10
    end

    it 'scores a spare' do
      bowling = Bowling.new
      expect(bowling.total([[6,4], [5, 2]])).to eq 22
    end
  end
end