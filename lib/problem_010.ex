defmodule Problem010 do
  @moduledoc false
  import Prime

  def sum_of_primes_under(max) do
    canditates = 1..(max - 1)
    canditates
      |> Enum.filter(&(is_prime?(&1)))
      |> Enum.sum
  end
end