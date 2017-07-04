defmodule Problem004 do
  require Integer

  def largest_palindromic_number_from_three_digit_factors do

  end

  def is_palindrom?(n) do
    digits = Integer.digits(n)
    digits == Enum.reverse(digits)
  end
end