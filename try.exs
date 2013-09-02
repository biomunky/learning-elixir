try do
	throw 13
catch
	number -> IO.puts "#{number} was thrown"
end

{x, y} = try do
					 x = 1
					 y = 10
					 {x, y}
				 catch
					 _ -> {nil, nil}
end

IO.puts "Second block: #{x} and #{y} returned"

if false, do: (IO.puts "~ #{1 + 2}"), else: (IO.puts "> #{20 + 2}")