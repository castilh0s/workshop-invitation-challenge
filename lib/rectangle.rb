require_relative "geometric_base"

class Rectangle < GeometricBase
  attr_writer :height, :width

  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    multiply(@height, @width)
  end

  def perimeter
    doubleHeight = multiply(@height, 2)
    doubleWidth = multiply(@width, 2)
    sum(doubleHeight, doubleWidth)
  end
end
