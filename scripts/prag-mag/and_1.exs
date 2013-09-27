# & all the things!

list = [1,2,3]

Enum.map list, fn elem -> elem * 2 end

add_one = &(&1 + 1)

add_one.(2)

# 3

square = &(&1 * &1)

square.(2)

# 4

times = &(&1 * &2)

times.(5, 3)

# Use the Kernel functions
t = &Kernel.*/2
p = &Kernel.+/2

# All the things, all the patterns, all the time
divrem = &{ div(&1, &2), rem(&1, &2) } 

divrem.(15,5)
# {3, 0}

divrem.(13,5)
# {2, 3}

m = &Kernel.min/2
m.(10, -1)




