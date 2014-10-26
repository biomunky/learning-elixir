require Logger

defmodule Whacker do
  def main(_args) do
    Logger.info "Hello, World!"
    #id = 1
    #Whacker.Http.request("www.google.co.uk", id)

    number_of_requests = 1000

    coord_task = Task.async(Whacker.Coordinator, :start, [number_of_requests])

    Enum.map 1..number_of_requests, fn(i) ->
      spawn Whacker.Http, :request, ["www.google.co.uk", i] 
    end
  
    Task.await(coord_task, :infinity)
  end
end
