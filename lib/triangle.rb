
class Triangle

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @side_array = [@side_1, @side_2, @side_3]
  end

  def unique_sides
    to_float = @side_array.collect &:to_f  #Array.class.uniq == 1
    to_float.uniq.count
  end

  def kind
    if invalid_triangle?
      raise TriangleError
    else
      return :equilateral if unique_sides == 1
      return :isosceles if unique_sides == 2
      return :scalene if unique_sides == 3
    end
  end

  def invalid_triangle?
    return true if @side_array.any? {|side| side == 0}
    return true if @side_1 + @side_2 <= @side_3
    return true if @side_1 + @side_3 <= @side_2
    return true if @side_3 + @side_2 <= @side_1
    return false
  end

  class TriangleError < StandardError
  end

end
