require "rspec"
require "./spiral_grid.rb"

RSpec.describe SpiralGrid do
  describe "#size" do
    context "when initialized with 0" do
      it "returns 0" do
        expect(SpiralGrid.new(0).size).to eq 0
      end
    end

    context "when initialized with 1" do
      it "returns 1" do
        expect(SpiralGrid.new(1).size).to eq 1
      end
    end
  end

  describe "#location_of(n)" do
    context "when given 1" do
      it "returns a hash with x: 0, y: 0" do
        grid = SpiralGrid.new(1)
        expect(grid.location_of(1)).to eq({x: 0, y: 0})
      end
    end

    context "when given 2" do
      it "returns a hash with x: 1, y: 0" do
        grid = SpiralGrid.new(2)
        expect(grid.location_of(2)).to eq({x: 1, y: 0})
      end
    end

    context "when given 3" do
      it "returns a hash with x: 1, y: 1" do
        grid = SpiralGrid.new(3)
        expect(grid.location_of(3)).to eq({x: 1, y: 1})
      end
    end

    context "when given 4" do
      it "returns a hash with x: 0, y: 1" do
        grid = SpiralGrid.new(4)
        expect(grid.location_of(4)).to eq({x: 0, y: 1})
      end
    end

    context "when given 5" do
      it "returns a hash with x: -1, y: 1" do
        grid = SpiralGrid.new(5)
        expect(grid.location_of(5)).to eq({x: -1, y: 1})
      end
    end

    context "when given 22" do
      it "returns a hash with x: -1, y: -2" do
        grid = SpiralGrid.new(22)
        expect(grid.location_of(22)).to eq({x: -1, y: -2})
      end
    end
  end
end
