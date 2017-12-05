require "rspec"
require "./manhattan_distance.rb"
require "./spiral_grid.rb"

RSpec.describe "the manhattan distance of a given number in a spiral grid to the origin" do
  context "when given 1024" do
    it "returns 31" do
      grid = SpiralGrid.new(1024)
      coordinates = grid.location_of(1024)
      expect(ManhattanDistance.calculate(coordinates)).to eq 31
    end
  end
end
