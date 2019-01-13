require 'pry'

class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0 || self.side1 + self.side2 <= self.side3 || self.side1 + self.side3 <= self.side2 || self.side2 + self.side3 <= self.side1
      #begin
        raise TriangleError
      #rescue TriangleError => error
        #puts error.message
      #end
    elsif self.side1 == self.side2 && self.side2 == self.side3
      return :equilateral
    elsif self.side1 == self.side2 && self.side2 != self.side3
      return :isosceles
    elsif self.side1 == self.side3 && self.side2 != self.side3
      return :isosceles
    elsif self.side2 == self.side3 && self.side2 != self.side1
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Violating triangle inequality!"
    end
  end

end
