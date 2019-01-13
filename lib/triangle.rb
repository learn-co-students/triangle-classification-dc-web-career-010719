require 'pry'

class Triangle
  attr_accessor :kind

  def initialize(side1, side2, side3)
  	@side1, @side2, @side3 = side1, side2, side3
  	@helper = [side1, side2, side3]
  	@helper2 = @helper.sort
  end

  def valid_triangle?
  	if @helper.include?(0)
  	  false
  	elsif @helper2[0] + @helper2[1] <= @helper2[2]
  	  false
  	else true
  	end
  end

  def triangle_assignment
  	if @helper.uniq.length == 1
  	  :equilateral
  	elsif @helper.uniq.length == 2
  	  :isosceles
  	elsif @helper.uniq.length == 3
  	  :scalene
  	end
  end

  def kind
	if valid_triangle? == true
	  triangle_assignment
	else
  	  raise TriangleError
  	end
  end

  class TriangleError < StandardError
  end

end

