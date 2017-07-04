defmodule Problem004 do
  require Integer

  def largest_palindromic_number_from_three_digit_factors do

  end

  def is_palindrom?(n) do
    digits = Integer.digits(n)
    half_length = div(length(digits), 2)
    1..half_length
      |> Enum.all?(&(Enum.at(digits, &1-1)==Enum.at(digits, -&1)))
  end
end