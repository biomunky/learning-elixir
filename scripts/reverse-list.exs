defmodule Hack do
	def reverse_list([h|t], acc // []) do
		#Hack.reverse_list(t, List.concat([h], acc))
		Hack.reverse_list(t, [h | acc])
	end

	def reverse_list([], acc) do
		acc
	end

	def sum([h|t], acc // 0), do: sum(t, h + acc)
	def sum([], acc), do: acc

	def sum_no_acc([]), do: 0
	def sum_no_acc([x|xs]), do: x+sum_no_acc(xs)
	
	def len([]), do: 0
	def len([_x|xs]), do: 1 + len(xs)

	def square([]), do: []
	def square([x|xs]), do: [x*x| square xs]

	# Hack.map([1,2,3,4], fn(i)->i+1 end)
	def map([], func), do: []
	def map([x|xs], func), do: [func.(x) | map(xs, func)]

end

x = Hack.reverse_list [1,2,3], []
IO.puts "#{is_list x}"
IO.puts "The length of x is #{length x}"
IO.puts "#{x}"

theSum = Enum.reduce(x, 0, fn(x, acc) -> x + acc end)
IO.puts "The sum of the invisible list is #{theSum}"

y = Hack.sum [1,2,3], 0
IO.puts "The result is #{y}"