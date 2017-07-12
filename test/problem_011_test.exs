defmodule Problem011Test do
  use ExUnit.Case

  test "largest product of 4 in a line" do
    assert Problem011.largest_product_of_in_a_line("test/problem_011_test.txt") == 70600674
  end
end