defmodule Sequence.Stash do
  use GenServer.Behaviour

  #####
  # External API  

  def start_link(current_number) do
    :gen_server.start_link( __MODULE__, current_number, [])
  end

  def save_value(pid, value) do
    :gen_server.cast pid, {:save_value, value}
  end

  def get_value(pid) do
    :gen_server.call pid, :get_value
  end

  #####
  # GenServer implementation

  def init(current_number)
  when is_number(current_number) do
    { :ok, current_number }
  end

  def handle_call(:get_value, _from, current_value) do 
    { :reply, current_value, current_value }
  end

  def handle_cast({:save_value, value}, _current_value) do
    { :noreply, value}
  end
end
