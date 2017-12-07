class JumpMaze
  def initialize(jump_instructions)
    @jump_instructions = jump_instructions
    @current_index = 0
    @steps_taken = 0
  end

  def steps_required
    loop do
      break steps_taken if current_instruction == :escaped
      jump
    end
  end

  private

  def jump
    offset = jump_instructions[current_index]
    destination_index = current_index + offset
    jump_instructions[current_index] += 1
    self.current_index = destination_index
    self.steps_taken = steps_taken + 1
  end

  def current_instruction
    jump_instructions.fetch(current_index) { :escaped }
  end

  attr_reader :jump_instructions
  attr_accessor :current_index, :steps_taken
end
