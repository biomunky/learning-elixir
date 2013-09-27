# Create your own enum module
# It must implement all?, each, filter, split and take
# It must not use library functions or lc

defmodule MyEnum do
  def all?(list),      do: all?(list, fn x -> !!x end)
  def all?([], _func), do: true
  #def all?([x|xs], func) do
  #  if func.(x) do
  #    all?(xs, func)
  #  else
  #    false
  #  end
  #end
  # nicer - credit: Fred Hsu
  def all?([x|xs], func), do: func.(x) and all?(xs, func)

  def each([], _), do: []
  def each([x|xs], func), do: [func.(x) | each xs, func]

  def filter([], _func), do: []
  def filter([x|xs], func) do
    if func.(x), do: [x | filter(xs, func)],
    else: filter(xs, func)
  end

  def reverse([]), do: []
  def reverse([x|xs]), do: reverse(xs) ++ [x]

  def split(list, n), do:  do_split([], list, n)
  
  defp do_split([], [],      _), do: pack([], [])
  defp do_split(left, right, 0), do: pack(left, right)
  
  defp do_split(left, right, n) when n < 0 do
    index = n + length(right)
    if index < 0, do: do_split(left, right, 0), 
    else: do_split(left, right, index) 
  end

  defp do_split(left, [x|xs], n), do: do_split([x | left], xs, n - 1)

  defp pack(head,tail), do: {reverse(head), tail}


  def take(list, n),       do: do_take(list, n, [])
  def do_take([], _, agg), do: reverse agg
  def do_take(_ , 0, agg), do: reverse agg
  def do_take([x|xs], n, agg), do: do_take(xs, n-1, [x | agg])

end

