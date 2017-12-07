require "rspec"
require "./weird_jump_maze.rb"

RSpec.describe "number of steps required to escape the weird jump maze" do
  context "given the test input file" do
    it "returns 10" do
      input_file = "test_input.txt"
      jump_instructions = IO.readlines(input_file).map(&:to_i)
      maze = WeirdJumpMaze.new(jump_instructions)
      expect(maze.steps_required).to eq 10
    end
  end
end

