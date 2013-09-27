import Enum

x = [1, 2, 3]

a = map x, fn x -> x + 2 end
b = map x, &(&1 + 2)

c = a == b

IO.puts c
