if true do
	a = 1 + 2
	b = a + 10
	IO.puts b
end

q = if true do
	:this
else
	:that
end

IO.puts q

r = case {1,2,3} do
			{4,5,6} ->
				"this won't match"
			{1, x, 3} ->
				"This will match and assign x to 2"
			_ ->
				"this will match as a last resort"
		end
IO.puts "the result is -> #{r}"

