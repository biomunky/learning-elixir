defmodule AskArea do
  import Geom

  def area() do
    prompt = IO.gets("R)ectangle, T)riangle or E)llipse: ")
    shape = char_to_shape(prompt)
    {w, h} = case shape do
               :rectangle -> get_dimensions("width", "height")
               :triangle -> get_dimensions("base", "height")
               :ellipse -> get_dimensions("major radius", "minor radius")
               :unknown -> {0, 0}
             end
    calculate(shape, w, h)
  end

	def char_to_shape(char) do
    clean = String.strip(char)
    cond do
      String.downcase(clean) == "r" -> :rectangle
      String.downcase(clean) == "t" -> :triangle
      String.downcase(clean) == "e" -> :ellipse
      true -> :unknown
    end
  end

  def get_number(prompt) do
    n = IO.gets("please enter #{prompt} > ")
    cond do
      Regex.match?(%r/\d+\.\d+(e\d+)?/, n) -> String.strip(n) |> binary_to_float
      Regex.match?(%r/\d+/, n) -> String.strip(n) |> binary_to_integer
      true -> :error
    end
  end

  def get_dimensions(prompt1, prompt2) do
    w = get_number(prompt1)
    h = get_number(prompt2)
    {w, h}
  end

  def calculate(shape, w, h) do
    cond do
      shape == :unknown -> IO.puts("Unknown shape provided")
      w == :error or h == :error -> IO.puts("Width and height must be positive int/floats")
      w < 0 or h < 0 -> IO.puts("Width & Height must be greater than 0")
      true -> Geom.area({shape, w, h})
    end
  end
end
