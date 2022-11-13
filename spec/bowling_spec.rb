require 'bowling'

RSpec.describe 'bowling scorecard' do
  before (:each) do
    @bowling = Bowling.new
  end

  it 'returns a score of 6' do
    @bowling = Bowling.new
    10.times {@bowling.frame([3, 3])}
    expect(@bowling.current_score).to eq 60
  end

  it 'returns a score of 0' do
    @bowling = Bowling.new
    10.times {@bowling.frame([0, 0])}
    expect(@bowling.current_score).to eq 0
  end

  it 'returns a score of 18' do
    @bowling = Bowling.new
    5.times {@bowling.frame([3, 6])}
    5.times {@bowling.frame([7, 1])}
    expect(@bowling.current_score).to eq 85
  end

  it 'returns a score of 60' do
    @bowling = Bowling.new
    10.times {@bowling.frame([0, 6])}
    expect(@bowling.current_score).to eq 60
  end

  it 'returns a score of 0 if no pins are knocked down in 10 frames' do
    @bowling = Bowling.new
    10.times {@bowling.frame([0, 0])}
    expect(@bowling.current_score).to eq 0
  end

  it 'returns a perfect score' do
    @bowling = Bowling.new
    10.times {@bowling.frame([10])}
    expect(@bowling.current_score).to eq 300
  end

  it 'returns a spare' do
    @bowling = Bowling.new
    10.times {@bowling.frame([6, 4])}
    expect(@bowling.sparescore).to eq 160
  end

  xit 'scores a spare' do
    @bowling = Bowling.new
    @bowling.frame([6, 4])
    @bowling.frame([2, 3])
    expect(@bowling.sparescore).to eq 12
  end
end