require_relative "geometric_base"

class Sphere < GeometricBase
  attr_writer :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    quadruplePi = multiply(4, PI)
    squareRadius = exponentiation(@radius, 2)
    multiply(quadruplePi, squareRadius)
  end

  def perimeter
    0
  end

  def volume
    cubeRadius = exponentiation(@radius, 3)
    fourThirds = divide(4,3)
    piCubeRadius = multiply(PI, cubeRadius)
    multiply(fourThirds, piCubeRadius)
  end
end
