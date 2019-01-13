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
    if self.side1 > 0 && self.side2 > 0 && self.side3 > 0
      if (self.side1+self.side2) > self.side3 &&
      (self.side2+self.side3) > self.side1 &&
      (self.side1+self.side3) > self.side2
        if self.side1 == self.side2 && self.side1 == self.side3
          return :equilateral
        elsif self.side1 != self.side2 && self.side1 != self.side3 &&
        self.side2 != self.side3
          return :scalene
        else
          return :isosceles
        end
      else
        # begin
          raise TriangleError
        # rescue TriangleError => error
        #   puts error.message
        # end
      end
    else
      # begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.zero_message
      # end
    end
  end

  class TriangleError < StandardError
    # triangle error code
    def message
      "Side lengths do not satisfy triangle inequality principle."
    end

    def zero_message
      "Each side must be larger than 0."
    end
  end

end
