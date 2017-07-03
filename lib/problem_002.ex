defmodule Problem002 do
  require Integer
  @moduledoc false
  
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n) when (n < 0) do
    raise(ArgumentError, "Fibonacci sequence is not defined for negative input.")
  end
  def fibonacci(n) do
    fibonacci(n - 1) + fibonacci(n - 2)
  end

  def sum_of_even_fibonacci_numbers_under(border) do
    numbers_under_border = fibonacci_numbers_under(border)
    numbers_under_border
      |> Enum.filter(fn n -> Integer.is_even(n) end)
      |> Enum.sum
  end

  defp fibonacci_numbers_under(border) do
    foo(0, [], border)
  end

  defp foo(current_position, numbers, border) do
    new_number = fibonacci(current_position)
    if(new_number > border) do
      numbers
    else
      foo(current_position + 1, [new_number | numbers], border)
    end

  end

end