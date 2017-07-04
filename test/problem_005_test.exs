defmodule Problem005Test do
  use ExUnit.Case

  @tag timeout: 120000
  @tag :long_running
  test "find smallest number evenly divisible from 1 to 20" do
    divisors = 1..20
    num = 1..1000000000
            |> Stream.filter(fn n -> Enum.all?(divisors,&(rem(n, &1)==0)) end)
            |> Enum.take(1)
    assert [num] == [232792560]
  end
end