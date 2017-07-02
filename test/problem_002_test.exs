defmodule Problem002Test do
    use ExUnit.Case
    
    test "fibonacci works for 1" do
        assert Problem002.fibonacci(1) == 1
    end

    test "fibonacci works for 2" do
        assert Problem002.fibonacci(2) == 1
    end

    test "sum of even fibonacci numbers under 4 million" do
        assert Problem002.sum_of_even_fibonacci_numbers_under(4000000) == 4613732
    end
end