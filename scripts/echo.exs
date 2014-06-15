defmodule Echo do
  def echo(i) do
    receive do
      {sender, msg} ->
        send sender, {:ok, "echo #{msg} N#{i}"}
        echo(i+1)
    end
  end
end

