defmodule Problem003 do
  @moduledoc false

  def largest_prime_factor(n) when n > 0 do
    factors = factorize(n)
    Enum.at(factors, -1)
  end
  
  defp factorize(n), do: factorize(n, 2, [])
  defp factorize(n, k, acc) when n < k, do: acc
  defp factorize(n, k, acc) when rem(n, k) == 0, do: [k|factorize(div(n, k), k, acc)]
  defp factorize(n, k, acc), do: factorize(n, k + 1, acc) 

end