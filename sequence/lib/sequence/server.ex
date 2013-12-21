defmodule Sequence.Server do
  use GenServer.Behaviour

  #####
  # External API  

  def start_link(stash_pid) do
    :gen_server.start_link({ :local, :sequence }, __MODULE__, stash_pid, [])
  end

  def next_number do
    :gen_server.call :sequence, :next_number
  end

  def increment_number(delta) do
    :gen_server.cast :sequence, {:increment_number, delta}
  end

  #####
  # GenServer implementation

  def init(stash_pid) do
    current_number = Sequence.Stash.get_value stash_pid
    { :ok, {current_number, stash_pid} }
  end

  def handle_call(:next_number, _from, {current_number, stash_pid}) do 
    { :reply, current_number, {current_number+1, stash_pid} }
  end

  def handle_cast({:increment_number, delta}, {current_number, stash_pid}) do
    { :noreply, {current_number + delta, stash_pid}}
  end

  def terminate(_reason, {current_number, stash_pid}) do
    Sequence.Stash.save_value stash_pid, current_number
  end
end
