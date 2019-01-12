class Triangle

  attr_reader :side_a, :side_b, :side_c
  attr_accessor :sides

  def initialize(side_a, side_b, side_c)
    @side_a, @side_b, @side_c = side_a, side_b, side_c
    @sides = [@side_a, @side_b, @side_c]
  end

  def kind
    if self.sides.uniq.size == 1 && self.sides.min > 0
      :equilateral
    elsif self.sides.sort.first(2).inject(:+) <= self.sides.sort.pop || self.sides.min <= 0
      begin
        raise TriangleError
      end
    elsif self.sides.uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
