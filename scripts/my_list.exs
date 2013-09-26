# The exercise only asks to find the max in a list
# There are 2 functions in MyList:
# The first will work with numbers and binaries
# The second will only work with numbers but has no
# additional private functions and no 'result' param
# that's passed about - the nested destructure is nice

defmodule MyList do
    def max([x]), do: x
    # Utils.max could be replaced by Kernel.max
    def max([x|xs]), do: Utils.max(x, max(xs))

    def max_head([m]), do: m
    def max_head([ m| [x|xs] ]) when x > m, do: max_head([x|xs])
    def max_head([ m| [x|xs] ]) when x < m, do: max_head([m|xs])
end


# Partial reimplementation of Kernel.max
defmodule Utils do
    def max(a, b) when is_number(a) and is_number(b), 
        do: (if a >= b, do: a, else: b)

    def max(a, b) when is_binary(a) and is_binary(b), 
        do: (if size(a) >= size(b), do: a, else: b)
end
