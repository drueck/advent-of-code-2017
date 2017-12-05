class ManhattanDistance
  def self.calculate(coordinates)
    return coordinates[:x].abs + coordinates[:y].abs
  end
end
