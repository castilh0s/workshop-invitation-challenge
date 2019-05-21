require_relative "geometric_base"

class Circle < GeometricBase
  attr_writer :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    sqrRadius = exponentiation(@radius, 2)
    multiply(PI, sqrRadius)
  end

  def perimeter
    doublePi = multiply(2, PI)
    multiply(doublePi, @radius)
  end
end
