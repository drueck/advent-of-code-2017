require "./spiral_grid_locations_generator.rb"
require "byebug"

class AdjacentSumSpiralGridNumberGenerator
  def initialize(locations: SpiralGridLocationsGenerator.new)
    @locations_generator = locations
    @grid = {}
  end

  def next
    next_location = locations_generator.next()
    adjacent_values = values_at(adjacent_locations(next_location))
    next_value = adjacent_values.reduce(:+)
    next_value = 1 if next_value == 0
    grid[next_location] = next_value
    next_value
  end

  def value_at(location)
    grid.fetch(location) { 0 }
  end

  private

  attr_reader :locations_generator, :grid

  def adjacent_locations(location)
    e = location.merge(x: location[:x] + 1)
    ne = e.merge(y: e[:y] + 1)
    n = location.merge(y: location[:y] + 1)
    nw = n.merge(x: n[:x] - 1)
    w = location.merge(x: location[:x] - 1)
    sw = w.merge(y: w[:y] - 1)
    s = location.merge(y: location[:y] - 1)
    se = s.merge(x: s[:x] + 1)

    [e, ne, n, nw, w, sw, s, se]
  end

  def values_at(locations)
    locations.map { |location| value_at(location) }
  end
end
