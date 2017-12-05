require "./spiral_grid_builder"

class SpiralGrid
  def initialize(size, builder: SpiralGridBuilder.new)
    @builder = builder
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

  attr_reader :grid, :builder

  def build_grid(size)
    (1..size).each_with_object([]) do |i, g|
      g[i] = builder.next()
    end
  end
end
