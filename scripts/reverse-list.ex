defmodule Hack do
	def reverse_list([h|t], acc // []) do
		Hack.reverse_list(t, List.concat([h], acc))
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

