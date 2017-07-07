defmodule Problem009 do
  @moduledoc false
  
  def pythagorean_triplet_with_sum(sum) do
    a_max = round(sum / 3.0) - 1
    possible_a = 1..a_max

    possible_a
      |> Enum.map(&(get_possible_b_to_given_a(&1, sum)))
      |> Enum.concat
      |> Enum.map(fn a_b -> add_missing_c(a_b)end)
      |> Enum.filter(fn abc -> is_pythagorean_triplet?(abc)end)
      |> List.first

  end

  defp get_possible_b_to_given_a(a, sum) do
    b_max = round(((sum - a) / 2.0)) - 1
    possible_b = (a + 1)..b_max
    Enum.map(possible_b, &([a, &1]))
  end

  defp add_missing_c(a_and_b) do
    [a, b] = a_and_b
    [a, b, 1000 - a - b]
  end

  def is_pythagorean_triplet?(abc) do
    [a, b, c] = abc
    (:math.pow(a, 2) + :math.pow(b, 2) - :math.pow(c, 2)) == 0
  end

end