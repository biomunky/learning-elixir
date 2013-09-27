cond do
	2 + 2 == 5 ->
		IO.puts "This won't match"
	2 * 2 == 3 ->
		IO.puts "Nor this"
	1 + 1 == 2 ->
		IO.puts "this will match"
end

# unlike scala, elixir uses true as a final match
cond do
	1 / 2 == 1 ->
		IO.puts "erm math!"
	2 * 2 == 5 ->
		IO.puts "nope"
		true ->
		IO.puts "Default reached!"
end