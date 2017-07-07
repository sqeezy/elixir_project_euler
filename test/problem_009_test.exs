defmodule Problem009Test do
  use ExUnit.Case

  @tag :skip
  test "find numbers where a+b+c=1000 a+b=c²" do
    [a, b, c] = Problem009.pythagorean_triplet_with_sum(1000)
    (a * b * c) == 31875000
  end
end