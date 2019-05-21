require_relative "geometric_base"
require_relative "rectangle"


class TriangleRectangle < GeometricBase
  attr_writer :height, :base

  def initialize(base, height)
    @height = height
    @base = base
  end

  def area
    @rectangle = Rectangle.new(@height, @base)
    divide(@rectangle.area, 2)
  end

  def perimeter
    squareBase = exponentiation(@base, 2)
    squareHeight = exponentiation(@height, 2)
    sqrBasePlusSqrHeight = sum(squareBase, squareHeight)
    basePlusHeight = sum(@base, @height)

    sum(
      radiciation(
        sqrBasePlusSqrHeight,
        2
      ),
      basePlusHeight
    )
  end
end
