defmodule Problem007 do
  @moduledoc false
  import Prime
  
  def get_prime(1), do: 2
  def get_prime(target_num) when target_num > 1 do
    get_prime(target_num, 2, 1)
  end

  def get_prime(target_num, last_tester, last_prime_position) do
    tester = last_tester + 1
    tester_is_prime = is_prime?(tester)
    next_prime_position = last_prime_position + 1

    cond do
      tester_is_prime and (next_prime_position == target_num) -> tester
      tester_is_prime -> get_prime(target_num, tester, next_prime_position)
      true -> get_prime(target_num, tester, last_prime_position)
    end
  end

end