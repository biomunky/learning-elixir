defmodule PingPong do
  def ping do
    receive do
      {sender, n} ->
        IO.puts("ping #{n}")
        sender <- {:pong, n-1}
        ping
    end
  end

  def pong do
    receive do
      {sender, n} ->
        IO.puts "pong #{n}"
        sender <- {:ping, n-1}
        pong
    end
  end

  def run do
    pinger = spawn(PingPong, :ping, [])
    ponger = spawn(PingPong, :pong, [])
    pinger <- {self, 2}

    receive do 
      {pid, 0} -> IO.puts "GAME OVER"
      {:ping, n} -> 
        pinger <- {self, n}
        run
      {:pong, n} -> 
        ponger <- {self, n}
        run
    end
  end
end

#run

PingPong.run
