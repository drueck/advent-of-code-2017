require "rspec"
require "./adjacent_sum_spiral_grid_number_generator.rb"

RSpec.describe "the number in the sequence after 747" do
  it "should be 806" do
    generator = AdjacentSumSpiralGridNumberGenerator.new
    answer = loop do
      answer = generator.next()
      break answer if answer > 747
    end
    expect(answer).to eq 806
  end
end
