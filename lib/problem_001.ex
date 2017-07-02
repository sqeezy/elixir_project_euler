defmodule Problem001 do

  def sum_of_numbers_divided_by(divisors, upper_bound) do
    testrange = 1..(upper_bound-1)

    testrange
      |> Enum.to_list
      |> Enum.filter(&(can_be_divided_by_any?(&1, divisors)))
      |> Enum.sum
  end

  defp can_be_divided_by_any?(num ,divisors) do
    Enum.any?(divisors, fn(devisor) -> rem(num, devisor) == 0 end)
  end
end
