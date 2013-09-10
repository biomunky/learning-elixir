defmodule Stacker.Server do
    use GenServer.Behaviour

    # Similar to the way we started the server in test-it.exs but with a new first arg
    # {:local, :stacker} registers the server on local nodes
    # This means we can invoke it using the localname :stacker rather than pid
    def start_link(stack) do
        :gen_server.start_link({:local, :stacker}, __MODULE__, stack, [])
    end

    def init(stack) do
        {:ok, stack}
    end

    # dan hack to test matching of methods
    # this will stop the server crashing if 
    # we ask for more elements that are on the stack
    #def handle_call(:pop, _from, []) do
    #    {:reply, nil, []}
    #end
    
    # syncronous - _from is the client information
    def handle_call(:pop, _from, [h|stack]) do
        {:reply, h, stack}
    end

    # async push messages onto the server
    def handle_cast({:push, new}, stack) do
        {:noreply, [new|stack]}
    end
    
    # There are 8 callbacks including the ones above
    # in a GenServer.  GenServer.Behavious defines them
    # automagically.

end