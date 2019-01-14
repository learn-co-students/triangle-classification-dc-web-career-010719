class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (self.side1 || self.side2 || self.side3) <= 0
      raise TriangleError
    elsif (self.side1 + self.side2) <= self.side3 || (self.side2 + self.side3) <= self.side1 || (self.side1 + self.side3) <= self.side2
      raise TriangleError
    else
      if self.side1 == self.side2 && self.side2 == self.side3
        :equilateral
      elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side3 == self.side1
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end
end
