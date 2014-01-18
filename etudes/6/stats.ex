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
	
	
end