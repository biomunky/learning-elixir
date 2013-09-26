# A function in a module to calculate the sum of the list

defmodule BioList do
	def sum([]), do: 0
	def sum([h|t]), do: h + sum(t)
end

