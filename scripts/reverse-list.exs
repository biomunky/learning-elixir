defmodule Hack do
	def reverse_list([h|t], acc // []) do
		#Hack.reverse_list(t, List.concat([h], acc))
		Hack.reverse_list(t, [h | acc])
	end

	def reverse_list([], acc) do
		acc
	end

	def sum([h|t], acc) do
		sum(t, h + acc)
	end

	def sum([], acc) do 
		acc
	end
end

x = Hack.reverse_list [1,2,3], []
IO.puts "#{is_list x}"
IO.puts "The length of x is #{length x}"
IO.puts "#{x}"

theSum = Enum.reduce(x, 0, fn(x, acc) -> x + acc end)
IO.puts "The sum of the invisible list is #{theSum}"

y = Hack.sum [1,2,3], 0
IO.puts "The result is #{y}"