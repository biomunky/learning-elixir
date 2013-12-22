defmodule Geom do
  @moduledoc """
  Functions for calculating areas of shapes.
  """

  @vsn 0.1

  @doc """
  Calculate the area of a rectangle.  Defaults to height and width 1
  """

  @spec area(number(), number()) :: number()

  def area(height // 1, width // 1) do
    height * width
  end

#	def area(height, width) do
#    height * width
#  end
end
