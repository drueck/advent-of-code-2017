require "./weird_jump_maze.rb"

input_file = ARGV[0]
exit if input_file.nil?

jump_instructions = IO.readlines(input_file).map(&:to_i)
maze = WeirdJumpMaze.new(jump_instructions)
puts maze.steps_required
