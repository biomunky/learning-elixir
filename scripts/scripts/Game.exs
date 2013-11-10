defmodule Game do
	def game do
		ping_pid = spawn(Pingpong, :ping, [])
		pong_pid = spawn(Pingpong, :pong, [])
		play_game(ping_pid, pong_pid, 10)
	end

	def play_game(ping_pid, pong_pid, n) do
		receive do
			{:ping, 0} -> IO.puts "Game Over (ping)"
			{:pong, 0} -> IO.puts "Game Over (pong)"
			{:ping, n} -> IO.puts "Got ping #{n}"
										ping_pid <- {:pong, n}
										play_game(ping_pid, pong_pid, n-1)
			{:pong, n} -> IO.puts "Got pong #{n}"
										pong_pid <- {:ping, n}
										play_game(ping_pid, pong_pid, n-1)
		end
	end
end

