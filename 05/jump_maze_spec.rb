require "rspec"
require "./jump_maze.rb"

RSpec.describe JumpMaze do
  describe "#steps_required" do
    context "given []" do
      it "returns 0" do
        jump_instructions = []
        maze = described_class.new(jump_instructions)
        expect(maze.steps_required()).to eq 0
      end
    end

    context "given [1]" do
      it "returns 1" do
        jump_instructions = [1]
        maze = described_class.new(jump_instructions)
        expect(maze.steps_required()).to eq 1
      end
    end

    context "given [0, 3, 0, 1, -3]" do
      it "returns 5" do
        jump_instructions = [0, 3, 0, 1, -3]
        maze = described_class.new(jump_instructions)
        expect(maze.steps_required).to eq 5
      end
    end
  end
end
