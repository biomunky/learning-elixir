defmodule Tick do
  @interval 2000
  @name :ticker

  def start do
      pid = spawn(__MODULE__, :generator, [[]])
      :global.register_name(@name, pid)
  end

  def register(client_pid) do
      :global.whereis_name(@name) <- {:register, client_pid}
  end

	  def generator(clients) do
	      receive do
	      	      {:register, pid} -> IO.puts "registering #{inspect pid}"
				  													generator([pid|clients])
	               after @interval -> IO.puts "tick"
                                    case clients do
                                      []     -> generator(clients)
                                      [x|xs] -> x <- {:tick}
                                                generator(List.flatten xs, [x])
                                      _      -> generator(clients)
                                    end
				end
		end
end
	  
defmodule Client do
	def start do
		pid = spawn(__MODULE__, :receiver, [])
		Tick.register(pid)
	end

	def receiver do
		receive do
			{:tick} -> IO.puts "TOCK in client"
			receiver
		end
	end
end
