# 2 dict implementations - HashDict && ListDict
# Set also - uses the Set api - apply via HashSet.new

d = HashDict.new name: "dan", state: "drunk"

IO.puts inspect d

# can also do, will yield a nil if not defined
IO.puts "my name is #{Dict.get d, :name}"

# can also do, will yield a nil if not defined
IO.puts d[:name]


set1 = HashSet.new 1..10

IO.puts inspect(HashSet.member? set1, 5)
