defmodule Prime do
  @moduledoc false

  def is_prime?(2), do: true
  def is_prime?(n) do
    range_end = round(:math.sqrt(n))
    range = 2..range_end
    factors_count = range
                      |> Stream.filter(&(rem(n, &1) == 0))
                      |> Stream.take(1)
                      |> Enum.to_list
                      |> length
    factors_count == 0
  end
end