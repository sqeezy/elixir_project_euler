defmodule Problem008Test do
  use ExUnit.Case

  test "find largest product of 4 adjacent numbers in file" do
    Problem008.find_biggest_out_of_four_factors("test/problem_008_test.txt")
  end
  
end