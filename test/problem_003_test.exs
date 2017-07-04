defmodule Problem003Test do
  use ExUnit.Case

  test "largest prime factor of 600851475143" do
    assert Problem003.largest_prime_factor(600851475143) == 6857
  end
end