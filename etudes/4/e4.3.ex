defmodule Power do

	import Kernel, except: [raise: 2]

  @vsn 0.1

  def raise(_, 0) do
    0
  end

  def raise(x, 1) do
    x
  end

  def raise(x, n) when n > 0 do
    x * raise(x, n - 1)
  end

  def raise(x, n) when n < 0 do
    1.0 / raise(x, -n)
  end



end
