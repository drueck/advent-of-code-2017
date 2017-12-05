require "./spiral_grid.rb"
require "./manhattan_distance.rb"

number = ARGV[0]
exit if number.nil?

number = number.to_i
grid = SpiralGrid.new(number)
coordinates = grid.location_of(number)
puts ManhattanDistance.calculate(coordinates)
