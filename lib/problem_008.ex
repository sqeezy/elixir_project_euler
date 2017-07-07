defmodule Problem008 do
  @moduledoc false
  require Integer

  def find_biggest_out_of_four_factors(path) do
    content = File.read!(path)
                |> String.replace("\r\n", "")
    
    content_indices = String.length(content) - 4

    0..content_indices
      |> Enum.map(&(String.slice(content, &1..(&1+3))))
      |> string_to_product

  end

  def string_to_product(s) do
    s 
      |> to_charlist
      |> Enum.map(&(elem(Integer.parse(&1), 0)))
      |> Enum.reduce(fn(e, acc) -> acc + e end)
  end

end