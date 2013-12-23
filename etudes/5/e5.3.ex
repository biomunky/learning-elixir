defmodule Dates do
	def date_parts(date) do
    #String.split(date, "-") |> Enum.map fn(i) -> binary_to_integer(i) end
    String.split(date, %r/-/) |> Enum.map fn(i) -> binary_to_integer(i) end
  end
end
