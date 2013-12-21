defmodule Spawn3 do
  def greet do
    receive do
      {sender, msg} ->
        sender <- {:ok, "Hello, #{msg}"}
        greet
    end
  end
end

# client
pid = spawn(Spawn3, :greet, [])

pid <- {self, "World!"}

receive do
  {:ok, msg} -> IO.puts msg
end

pid <- {self, "Kermit!"}
receive do
  {:ok, msg} -> IO.puts msg
after 500 ->
  IO.puts "The greeter has gone"
end
