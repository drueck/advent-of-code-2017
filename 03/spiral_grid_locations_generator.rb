class SpiralGridLocationsGenerator
  ORIGIN = {x: 0, y: 0}

  def initialize
    @current_location = nil
    @current_movement_vector = 1
    @current_segment_length = 1
    @segment_moves_remaining = 1
    @current_segment_axis = :x
  end

  def next
    if current_location.nil?
      self.current_location = ORIGIN.dup
      return current_location.dup
    end

    if moves_remaining?
      move
    else
      turn
      move
    end

    current_location.dup
  end

  private

  def moves_remaining?
    segment_moves_remaining > 0
  end

  def move
    current_location[current_segment_axis] += current_movement_vector
    self.segment_moves_remaining = segment_moves_remaining - 1
  end

  def turn
    if moving_right?
      turn_up
    elsif moving_up?
      turn_left
      increment_segment_length
    elsif moving_left?
      turn_down
    elsif moving_down?
      turn_right
      increment_segment_length
    end

    self.segment_moves_remaining = current_segment_length
  end

  def moving_right?
    current_segment_axis == :x && current_movement_vector == 1
  end

  def moving_up?
    current_segment_axis == :y && current_movement_vector == 1
  end

  def moving_left?
    current_segment_axis == :x && current_movement_vector == -1
  end

  def moving_down?
    current_segment_axis == :y && current_movement_vector == -1
  end

  def turn_up
    self.current_segment_axis = :y
    self.current_movement_vector = 1
  end

  def turn_left
    self.current_segment_axis = :x
    self.current_movement_vector = -1
  end

  def turn_down
    self.current_segment_axis = :y
    self.current_movement_vector = -1
  end

  def turn_right
    self.current_segment_axis = :x
    self.current_movement_vector = 1
  end

  def increment_segment_length
    self.current_segment_length = current_segment_length + 1
  end

  attr_accessor :current_location, :current_movement_vector,
    :current_segment_length, :segment_moves_remaining,
    :current_segment_axis

end
