defmodule Problem011 do
  @moduledoc false
  require Comb

  @directions [
                [1, 1],
                [-1, -1],
                [1, 0],
                [-1, 0],
                [0, 1],
                [0, -1],
                [-1, 1],
                [1, -1],
              ]

  def largest_product_of_in_a_line(path) do
    raw_file_content = File.read!(path)
    matrix = raw_file_content
              |> String.split("\r\n")
              |> Enum.map(&(line_string_to_number_list(&1)))

    x_max = length(matrix) - 1
    y_max = length(Enum.at(matrix, 0)) - 1
    possible_x = 0..x_max
    possible_y = 0..y_max

    start_points = Comb.cartesian_product(possible_x, possible_y)

    start_points
      |> Enum.map(&get_all_index_pairs_for_start_position/1)
      |> Enum.concat
      |> Enum.to_list
      |> Enum.filter( &(is_in_matrix_boundries(&1, x_max, y_max)) )
      |> Enum.map(&(get_values_for_index_pairs(&1, matrix)))
      |> Enum.map(fn nums -> List.foldl(nums, 1, &(&1 * &2)) end)
      |> Enum.max

  end

  defp get_values_for_index_pairs([], _), do: []
  defp get_values_for_index_pairs([pair | tail], matrix) do
    [x, y] = pair
    pair_value = get_value_from_matrix(x, y, matrix)
    [ pair_value | get_values_for_index_pairs(tail, matrix)]
  end

  defp get_all_index_pairs_for_start_position(start) do
    @directions
      |> Enum.map(&(get_indices_of_quartet_for_start_position(start, &1)))
  end

  defp line_string_to_number_list(line) do
    line
      |> String.split
      |> Enum.map(&(elem(Integer.parse(&1), 0)))
  end

  defp is_in_matrix_boundries(positions, x_max, y_max) do
    positions
      |> Enum.all?(fn v ->
                          [x, y] = v
                          (x in 0..x_max) and (y in 0..y_max)
                        end)
  end

  defp get_indices_of_quartet_for_start_position(start, direction) do
    [
      start,
      add_times(start, direction, 1),
      add_times(start, direction, 2),
      add_times(start, direction, 3)
    ]
  end

  defp get_value_from_matrix(x, y, matrix) do
    matrix
      |> Enum.at(x)
      |> Enum.at(y)
  end

  defp add_times(v1, v2, v2_factor) do
    multiplied_v2 = times(v2_factor, v2)
    add(v1, multiplied_v2)
  end

  defp times(f, v) when length(v) == 2 do
    [a, b] = v
    [a * f, b * f]
  end

  defp add([],[]), do: []
  defp add(v1, v2) when length(v1) == length(v2) do
    [e1 | tail1] = v1
    [e2 | tail2] = v2
    [e1 + e2 | add(tail1, tail2)]
  end
end