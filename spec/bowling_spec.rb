require 'bowling'

RSpec.describe 'bowling scorecard' do
  it 'returns a score of 6' do
    bowling = Bowling.new
    bowling.frame(3, 3)
    expect(bowling.current_score).to eq 6
  end

  it 'returns a score of 0' do
    bowling = Bowling.new
    bowling.frame(0, 0)
    expect(bowling.current_score).to eq 0
  end

  it 'returns a score of 18' do
    bowling = Bowling.new
    bowling.frame(3, 6)
    bowling.frame(7, 2)
    expect(bowling.current_score).to eq 18
  end

  it 'returns a score of 60' do
    bowling = Bowling.new
    10.times {bowling.frame(0, 6)}
    expect(bowling.current_score).to eq 60
  end
end