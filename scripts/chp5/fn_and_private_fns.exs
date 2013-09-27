defmodule MoreMath do
	def sum(a, b) do
		do_sum(a, b)
	end

	defp do_sum(a, b) do
		a + b
	end
end

IO.puts MoreMath.sum(1, 2)

# now this will fail because do_sum is private
IO.puts MoreMath.do_sum(1, 2)