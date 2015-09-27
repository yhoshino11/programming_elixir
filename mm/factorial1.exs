defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n - 1)
end

defmodule Math do
  def gcd(0,b), do: b
  def gcd(a,0), do: a
  def gcd(a,b), do: gcd(b, rem(a,b))
end
