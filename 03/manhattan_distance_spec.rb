require "rspec"
require "./manhattan_distance.rb"

RSpec.describe ManhattanDistance do
  describe ".calculate" do
    context "when given {x: 0, y: 0}" do
      it "returns 0" do
        expect(ManhattanDistance.calculate({x: 0, y: 0})).to eq 0
      end
    end

    context "when given {x: 0, y: 1}" do
      it "returns 1" do
        expect(ManhattanDistance.calculate({x: 0, y: 1})).to eq 1
      end
    end

    context "when given {x: 0, y: -2}" do
      it "returns 2" do
        expect(ManhattanDistance.calculate({x: 0, y: -2})).to eq 2
      end
    end
  end
end
