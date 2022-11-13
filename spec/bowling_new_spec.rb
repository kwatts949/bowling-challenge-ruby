require 'bowling_new'

RSpec.describe 'bowling scorecard' do

  context 'no spare or strikes' do
    it 'returns a correct score for 10 frames' do
      bowling = BowlingNew.new
      expect(bowling.score([[1, 4], [4, 5],[5, 4], [5, 4], [9, 0], [1, 4], [4, 5],[5, 4], [5, 4], [9, 0]])).to eq 82
    end
  end

  context 'with non-consecutive spares' do
    it 'returns a correct score for 10 frames' do
      bowling = BowlingNew.new
      expect(bowling.score([[1, 4], [4, 5],[6, 4], [5, 4], [9, 0], [1, 4], [4, 5],[6, 4], [5, 4], [9, 0]])).to eq 94
    end
  end

  context 'with consecutive spares' do
    it 'returns a correct score for 10 frames with 2 consecutive frames' do
      bowling = BowlingNew.new
      expect(bowling.score([[1, 4], [4, 5],[6, 4], [6, 4], [9, 0], [1, 4], [4, 5],[3, 4], [5, 4], [9, 0]])).to eq 97
    end

    it 'returns a correct score for 10 frames with 3 consecutive spares' do
      bowling = BowlingNew.new
      expect(bowling.score([[1, 4], [4, 5],[6, 4], [6, 4], [9, 1], [1, 4], [4, 5],[3, 4], [5, 4], [9, 0]])).to eq 99
    end
  end

  context 'with non-consecutive strikes' do
    it 'returns a correct score for 10 frames including a strike' do
      bowling = BowlingNew.new
      expect(bowling.score([[1, 4], [4, 5],[10, 0], [5, 4], [9, 0], [1, 4], [4, 5],[3, 4], [5, 4], [9, 0]])).to eq 90
    end

    it 'returns a correct score for 10 frames with 2 non-consecutive strikes' do
      bowling = BowlingNew.new
      expect(bowling.score([[1, 4], [4, 5],[10, 0], [5, 4], [9, 0], [1, 4], [4, 5],[3, 4], [10, 0], [9, 0]])).to eq 100
    end

    it 'returns a correct score for 10 frames with 2 consecutive strikes' do
      bowling = BowlingNew.new
      expect(bowling.score([[1, 4], [4, 5],[10, 0], [10, 0], [9, 0], [1, 4], [4, 5],[3, 4], [8, 1], [9, 0]])).to eq 111
    end
  end

  context 'with zero scores' do
    it 'returns a correct score for 10 frames' do
      bowling = BowlingNew.new
      expect(bowling.score([[0, 0], [0, 0],[0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0], [0, 0]])).to eq 0
    end
  end

  context 'with perfect scores' do
    it 'returns a correct score for 10 frames' do
      bowling = BowlingNew.new
      expect(bowling.score([[10, 0], [10, 0],[10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0], [10, 0]])).to eq 300
    end
  end
end