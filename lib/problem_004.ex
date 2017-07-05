defmodule Problem004 do
  @moduledoc false
  require Integer
  require Combination


  def largest_palindromic_number_from_three_digit_factors do
    factors_combinations = Combination.combine(1..999, 2)

    factors_combinations
      |> Enum.map(fn [a, b] -> a * b end)
      |> Enum.filter(fn p -> is_palindrom?(p) end)
      |> Enum.max
  end

  def is_palindrom?(n) do
    digits = Integer.digits(n)
    digits == Enum.reverse(digits)
  end
end