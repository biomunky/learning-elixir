# Closures - not clojures!

greeter = fn(n) -> (fn -> IO.puts "Hello #{n}" end) end

#IO.puts greeter.("dan").()

## Hello dan

# exercise: functions-4

prepend = fn(s1) -> (fn(s2) -> s1 <> " " <> s2 end) end

mrs = prepend.("Mrs")

IO.puts mrs.("smith")