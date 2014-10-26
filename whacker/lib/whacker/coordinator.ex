require Logger

defmodule Whacker.Coordinator do
  def start(n) do
    Logger.info "Starting coordinator"
    Process.register(self, Whacker.Coordinator)
    #coordinate(%{finished: 0, numb_requests: n})
    coordinate(0,n)
  end

  #defp coordinate(%{finished: n, numb_requests: n}) do
  defp coordinate(n, n) do
    Logger.info "All requests complete"
    :ok
  end

  #defp coordinate(%{finished: f, numb_request: n}) do
  defp coordinate(f, n) do
    receive do
      {:finished, _i} ->
        #coordinate(%{finished: f + 1, numb_request: n})
        coordinate(f + 1, n)
    end
  end

end