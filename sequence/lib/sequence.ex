defmodule Sequence do
  def start(_type, _args) do
    Sequence.Supervisor.start_link(123)
  end
end
