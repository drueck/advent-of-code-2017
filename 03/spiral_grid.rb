require "./spiral_grid_locations_generator.rb"

class SpiralGrid
  def initialize(size, locations: SpiralGridLocationsGenerator.new)
    @locations = locations
    @grid = build_grid(size)
  end

  def location_of(n)
    grid[n]
  end

  def size
    return 0 if grid.empty?
    grid.length - 1
  end

  private

  attr_reader :grid, :locations

  def build_grid(size)
    (1..size).each_with_object([]) do |i, g|
      g[i] = locations.next()
    end
  end
end
