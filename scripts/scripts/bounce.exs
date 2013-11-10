defmodule Bounce do
	def echo do
		receive do
			msg -> IO.puts("Received #{msg}")
		end
	end

	def echo_count(n) do
		receive do
			msg -> IO.puts("Received #{msg}. It was msg ##{n}")
						 echo_count(n+1)
		end
	end
end