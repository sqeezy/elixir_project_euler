defmodule Problem001Test do
  use ExUnit.Case

  test "problem 1: sum of multiples of 3 and 5 under 1000" do
    assert Problem001.sum_of_numbers_divided_by([3,5], 1000) == 233168
  end
end
