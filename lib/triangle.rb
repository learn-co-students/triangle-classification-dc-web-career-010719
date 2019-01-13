class Triangle
  # write code here
  attr_reader :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one, @side_two, @side_three = side_one, side_two, side_three
  end

  def kind
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
      raise TriangleError
    elsif @side_one + @side_two <= @side_three || @side_two + @side_three <= @side_one || @side_one + @side_three <= @side_two
      raise TriangleError
    elsif @side_one == @side_two && @side_two == @side_three
      return :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      return :isosceles
    elsif @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
      return :scalene
    end
  end


  class TriangleError < StandardError

  end

end
