defmodule Geom do
	def area ({shape, a, b}) do
    area(shape, a, b)
  end

  defp area(:rectangle, a, b) when a >= 0 and b >= 0 do
    a * b
  end

  defp area(:triangle, a, b) when a >= 0 and b >= 0 do
    a * b / 2.0
  end

  defp area(:ellipse, a, b) when a >= 0 and b >= 0 do
    :math.pi * a * b
  end

  # 3-3 don't let it fail!!!
  defp area(_, _, _) do
    0
  end

end
