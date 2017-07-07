defmodule Problem010Test do
  use ExUnit.Case

  test "sum of primes under 2 mio" do
    assert Problem010.sum_of_primes_under(round(2.0e6)) == 142913828922
  end
end