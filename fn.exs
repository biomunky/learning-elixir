f = fn
			x, y when x > 0 -> x + y
			x, y -> x * y
end

IO.puts f.(1,3)
IO.puts f.(-1, 3)