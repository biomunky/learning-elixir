defmodule Stats do

	def minimum(input) do 
		case input do
			[x|xs] -> minimum(xs, x)
			[] -> nil
		end

	end

	defp minimum([], candidate) do
		candidate
	end

	defp minimum([h|t], candidate) when candidate < h do
		minimum(t, candidate)
	end

	defp minimum([h|t], _) do
		minimum(t, h)
	end
	
  def mean(aseq) do
    case Enum.empty? aseq do
      false -> List.foldl(aseq, 0, fn(acc, x) -> acc + x end) / Enum.count(aseq)
      true -> nil
    end
  end

  def fizzbuzz(a) do
    case {rem(a, 3), rem(a, 5)} do
      {0, 0} -> "fizzbuzz"
      {0, _} -> "fizz"
      {_, 0} -> "buzz"
      {_, _} -> a
    end
  end

end