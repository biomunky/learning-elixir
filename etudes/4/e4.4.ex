defmodule Powers do

  import Kernel, except: [raise: 2, raise: 3]

  def nth_root(x, n) do
    nth_root(x, n, x / 2.0)
  end

  defp nth_root(x, n, approx) do
    f = raise(approx, n) - x
    fp = n * raise(approx, n - 1)
    next = approx - f / fp
    change = abs(next - approx)
    cond do
      change < 1.0e-8 -> next
      true -> nth_root(x, n, next)
    end
  end

  def raise(x, 1) do
    x
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end

  def raise(x, n) when n > 0 do
    raise(x, n, 1)
  end

  #Private methods for tco
  defp raise(_, 0, acc) do
    acc
  end

  defp raise(x, n, acc) do
    raise(x, n - 1, x * acc)
  end

end
