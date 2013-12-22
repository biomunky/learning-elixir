#
# When given 1 arg the function will return a + arg
# When given 0 args the function doesn't match
# and an error is thrown
#
defmodule Test do
	def sum(a // 3, b, c //7) do
    IO.puts a
    IO.puts b
    IO.puts c
    a + b + c
  end
end
