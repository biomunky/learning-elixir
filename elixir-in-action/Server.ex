defmodule Server do
  def start, do: spawn(&loop/0)

  defp loop do 
    receive do
      {:run_query, caller, func} ->
        send caller, {:query_result, run_query(func)}
    end
    loop
  end

  defp run_query(query_def) do
    :timer.sleep(2000)
    "result #{query_def}"
  end

  def run_async(server_pid, query_def) do 
    send server_pid, {:run_query, self, query_def}
  end

  def get_result do
    receive do
      {:query_result, result} -> result
      
    after 5000 ->
            {:error, :timeout}
    end
  end
end