defmodule Teeth do

  def pocket_depths do
    [[0], [2,2,1,2,2,1], [3,1,2,3,2,3],
    [3,1,3,2,1,2], [3,2,3,2,2,1], [2,3,1,2,1,1],
    [3,1,3,2,3,2], [3,3,2,1,3,1], [4,3,3,2,3,3],
    [3,1,1,3,2,2], [4,3,4,3,2,3], [2,3,1,3,2,2],
    [1,2,1,1,3,2], [1,2,2,3,2,3], [1,3,2,1,3,3], [0],
    [3,2,3,1,1,2], [2,2,1,1,3,2], [2,1,1,1,1,2],
    [3,3,2,1,1,3], [3,1,3,2,3,2], [3,3,1,2,3,3],
    [1,2,2,3,3,3], [2,2,3,2,3,3], [2,2,2,4,3,4],
    [3,4,3,3,3,4], [1,1,2,3,1,2], [2,2,3,2,1,3],
    [3,4,2,4,4,3], [3,3,2,1,2,3], [2,2,2,2,3,3],
    [3,2,3,2,3,2]]
  end


  @spec alert(list(list())) :: list()

  def alert(lst) do
    alert(lst, 1, [])
  end

  defp alert([], _, agg) do
    Enum.reverse(agg)
  end

  defp alert([x|xs], ctr, agg) do
    cond do
      [0] == x        -> alert(xs, ctr + 1, ["Missing " <> to_string(ctr) | agg])
      Enum.max(x) > 3 -> alert(xs, ctr + 1, [ctr | agg])
      true            -> alert(xs, ctr + 1, agg)
    end
    # if Enum.max(x) > 3 do
    #   alert(xs, ctr + 1, [ctr | agg])
    # else
    #   alert(xs, ctr + 1, agg)
    # end
  end

end