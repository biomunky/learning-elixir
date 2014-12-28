defmodule MyModule do
  def run do
    IO.puts "Hello, World"
  end
  
  def run2, do: IO.puts("Hello again")


  def smallest(list) when length(list) > 0 do
    Enum.min(list)
  end

  def smallest(_), do: {":error", ":invalid_argument"}

end

MyModule.run
MyModule.run2

IO.puts MyModule.smallest([1,2,3])
IO.puts MyModule.smallest([3,4,5,1,0,9])
IO.puts MyModule.smallest(["c", "a", "t"])



