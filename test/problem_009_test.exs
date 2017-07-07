defmodule Problem009Test do
  use ExUnit.Case

  test "find numbers where a²+b²+c=1000 a+b=c²" do
    [a, b, c] = Problem009.pythagorean_triplet_with_sum(1000)
    assert (a * b * c) == 31875000
  end
end