require "rspec"
require "./adjacent_sum_spiral_grid_number_generator.rb"
require "byebug"

RSpec.describe AdjacentSumSpiralGridNumberGenerator do
  describe "#next" do
    context "when called for the first time" do
      it "returns 1" do
        generator = described_class.new
        expect(generator.next()).to eq 1
      end
    end

    context "when called for the second time" do
      it "returns 1" do
        generator = described_class.new
        generator.next()
        expect(generator.next()).to eq 1
      end
    end

    context "when called for the third time" do
      it "returns 2" do
        generator = described_class.new
        generator.next()
        generator.next()
        expect(generator.next()).to eq 2
      end
    end

    context "when called for the fourth time" do
      it "returns 4" do
        generator = described_class.new
        3.times do
          generator.next()
        end
        expect(generator.next()).to eq 4
      end
    end

    context "when called for the fifth time" do
      it "returns 5" do
        generator = described_class.new
        4.times do
          generator.next()
        end
        expect(generator.next()).to eq 5
      end
    end
  end
end
