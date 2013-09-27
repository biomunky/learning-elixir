defmodule Foo do
	def zero?(0) do
		true
	end

	def zero?(x) when is_number(x) do
		false
	end
end

Foo.zero?(0)
Foo.zero?(1)

defmodule Concat do
	def join(a, b, sep // " ") do
		a <> sep <> b
		end
end

defmodule Foo do
	defmodule Bar do
		def hello(x) do
			IO.puts "Hello #{x}"
		end
	end
end
	

IO.puts Concat.join("I am", "nad")
IO.puts Concat.join("Hello", "world", "_")

Foo.Bar.hello("dan")