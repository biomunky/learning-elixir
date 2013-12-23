defmodule Geom do

  def area({_, a, b}) when a < 0 or b < 0 do
    "Width and Height must be greater than 0"
  end

  def area({shape, a, b}) when a >= 0 and b >= 0 do
    area(shape, a, b)
  end

  defp area(shape, a, b) do
    case shape do
      :rectangle -> a * b
      :triangle -> a * b / 2.0
      :ellipse -> :math.pi * a * b
    end
  end

end
