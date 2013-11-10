defmodule Pingpong do
	def ping do
		receive do
			{:pong, n} -> IO.puts "[pp] ping #{n}"
										ping()
		end
	end
	
	def pong do
		receive do
			{:ping, n} -> IO.puts "[pp] pong #{n}"
										pong()
		end
	end
end