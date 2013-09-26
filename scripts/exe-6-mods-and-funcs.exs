# I’m thinking of a number between 1 and 1000...
# The most efficient way to find the number 
# is to guess halfway between the low and high numbers
# of the range. If our guess is too big, then the answer 
# lies between the bottom of the range and one less than our guess. 
# If it is too small, then the answer lies between one 
# more than our guess and the end of the range.

# Code this up. 
# Your API will be guess(actual, range), where range is an Elixir range.

defmodule Chop do  
    def guess(number_to_guess, r=low..high) do
        guess = div(low+high, 2)
        _guess(number_to_guess, guess, r)
    end

    defp _guess(a, a, _), do: IO.puts "The number has been found: #{a}"
    defp _guess(a, g, _low .. high) when g < a, do: guess(a, g+1 .. high)   
    defp _guess(a, g, low .. _high) when g > a, do: guess(a, low .. g-1)
end

