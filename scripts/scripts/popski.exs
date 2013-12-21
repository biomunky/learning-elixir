defmodule Popski do

  def pop([]) do
    nil
  end

  def pop([x|_xs]) do
    x
  end

  def put(nil, i) do
    [i]
  end

  def put([], i) do
    [i]
  end

  def put(l, i) do
    [i | l]
  end

end