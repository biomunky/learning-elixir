a = {1, 2}
b = {:ok, "cat", 42}

{status, animal, answer_to_life} = b

## Common for processes to return status as first elements of tuples
## for example accessing a file - this is the same activity we see
## in golang

{status, p} = File.open("/Users/dan/.zshrc")

IO.puts "I opened my .zshrc #{status}"

# if you wanted this to crash we could use an explicit match

# this will work because the first element of the tuple is :ok
{:ok, _} = File.open("/Users/dan/.zshrc")

# this will fail because we get an :ok not :error
{:error, _} = File.open("/Users/dan/.zshrc")
