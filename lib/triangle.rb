class Triangle
  attr_reader :one, :two, :three
  def initialize(one, two ,three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    validate_triangle
    if @one == @two && @two == @three
      :equilateral
    elsif @one == @two || @two == @three || @three == @one
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    if @one + @two <= @three || @two + @three <= @one || @one + @three <= @two || @one + @two + @three <= 0
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # def message
    #   "illegal triangle"
    # end
  end
end
