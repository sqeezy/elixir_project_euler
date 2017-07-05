defmodule Problem007Test do
  use ExUnit.Case

  test "find 10001st prime number" do
    assert Problem007.get_prime(10001) == 104743
  end
end