defmodule Caller do
	def caller do
		receive do
			{from, message} ->
				IO.puts("called with #{message}")
				from <- {self, :called}
				caller()
		end
	end
end