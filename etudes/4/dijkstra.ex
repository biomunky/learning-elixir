defmodule Dijkstra do
  def gcd(m, n) do
	  cond do
      m == n -> m
      m > n -> gcd(m - n, n)
      m < n -> gcd(m, n - m)
    end
  end
end
