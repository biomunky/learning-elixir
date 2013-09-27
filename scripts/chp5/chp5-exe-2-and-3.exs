# Write a function that takes 3 args
# If 1st two are 0 return fizzbuzz
# If 1st is 0 return fizz
# if 2nd is 0 return buzz
# otherwise return the third arg

fizzbuzz = fn
						 0, 0, _ -> "FizzBuzz"
						 0, _, _ -> "Fizz"
						 _, 0, _ -> "Buzz"
						 _, _, x -> x
					 end

# now use the rem(a,b) function to call the above
# with numbers

fbuzz = fn(n) -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

# do it 7 times						 
r = 10..16

outcome = Enum.map r, fn(i) -> fbuzz.(i) end

# do this in the repl
IO.puts "> #{outcome} <- sting oddness!?\n"