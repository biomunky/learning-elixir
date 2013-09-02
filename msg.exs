
current_pid = self

spawn fn ->
					 current_pid <- {:hello, self}
end

receive do
	{:hello, pid} ->
		IO.puts "Hello from #{inspect(pid)}"
end

receive do
	:waiting ->
		IO.puts "This may never arrive!"
after
	1000 -> # wait 1 second
	IO.puts "Too late"
end