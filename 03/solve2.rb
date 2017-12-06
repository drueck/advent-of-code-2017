require "./adjacent_sum_spiral_grid_number_generator.rb"

input = ARGV[0]
exit if input.nil?

penultimate_number = input.to_i

generator = AdjacentSumSpiralGridNumberGenerator.new
next_number = loop do
  answer = generator.next()
  break answer if answer > penultimate_number
end

puts next_number
