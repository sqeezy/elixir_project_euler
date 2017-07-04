defmodule Problem006Test do
  use ExUnit.Case

    test "difference of sum of squares and square of sums for 1..100" do
      numbers = 1..100
      square = fn(x) -> x*x end
      sums_of_squares = numbers
                          |> Enum.map(square)
                          |> Enum.sum
      square_of_sumes = numbers
                          |> Enum.sum
                          |> square.()
      assert square_of_sumes - sums_of_squares == 25164150
    end
end