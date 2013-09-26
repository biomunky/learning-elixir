defmodule Times do

	def double(n) do
		n * 2
	end

	# Short way of defining a function
	# note the , after the args adn the
	# and the : after the do
	def short_double(n), do: n * 2

	def greet(greeting, name), do: 
	(
	 IO.puts greeting
	 IO.puts "How are you doing, #{name}"
	) # prefer do end over this syntax
	
	def fact(0), do: 1
	def fact(n), do: n * fact(n-1)

end