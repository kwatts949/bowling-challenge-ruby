def initialize
  @frame = 1
  @roll = 1
  @pins = 0
end

def run
  print_header
  enter_score
end

def print_header
  puts 'Welcome to the bowling scorecard program!'
end

def enter_score
  puts 'Please enter the number of pins knocked down'
  @pins = user.gets.chomp
end

run