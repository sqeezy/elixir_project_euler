defmodule Problem004Test do
  use ExUnit.Case

  test "largest palindromic number out of two three-digit factors is 906609" do
    assert Problem004.largest_palindromic_number_from_three_digit_factors == 906609
  end

  test "is_palindrom works" do
    assert Problem004.is_palindrom?(101) == true
    assert Problem004.is_palindrom?(9889) == true
    assert Problem004.is_palindrom?(98689) == true
    assert Problem004.is_palindrom?(12345) == false
  end
end