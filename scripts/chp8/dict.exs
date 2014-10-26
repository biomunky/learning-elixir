defmodule Sum do
  def values(dict) do
    dict |> Dict.values |> Enum.sum
  end

  def a_hashdict() do
    [ one: 1, two: 2, three: 3 ] |> Enum.into HashDict.new
  end

  def a_dict() do
    [ one: 1, two: 2, three: 3] |> Enum.into Map.new
  end

end