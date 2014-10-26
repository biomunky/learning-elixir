require Logger

defmodule Whacker.Http do
  def request(url, id) do
    try do
      Logger.info "Fetching #{url} :: #{id}"
      HTTPoison.get(url) |> handle_response(id)
      rescue
        error in HTTPoison.HTTPError ->
        Logger.info "error fetching: #{inspect error.message}"
    after
      send Whacker.Coordinator, {:finished, id}
    end
  end

  defp handle_response(%HTTPoison.Response{status_code: status_code, body: body}, id) do 
    Logger.info "Status Code: #{status_code} -> #{id}"
  end
end