require "rspec"
require "./jump_maze"

RSpec.describe "number of steps required to escape the jump maze" do
  context "given the test input file" do
    it "returns 5" do
      input_file = "test_input.txt"
      jump_instructions = IO.readlines(input_file).map(&:to_i)
      maze = JumpMaze.new(jump_instructions)
      expect(maze.steps_required).to eq 5
    end
  end
end

