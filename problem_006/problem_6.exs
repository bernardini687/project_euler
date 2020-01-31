defmodule Problem6 do
  @moduledoc """
  find the diff
  between the sum of the squares
  of the first hundred natural numbers
  and the square of the sum.
  """

  @size 100

  import Enum, only: [reduce: 3]

  def solution(size \\ @size) do
    sum =
      size
      |> apply_reduce(&(&1 + &2))

    sum_of_sqrs =
      size
      |> apply_reduce(&(&1 * &1 + &2))

    sum * sum - sum_of_sqrs
  end

  defp apply_reduce(size, function) do
    reduce(1..size, 0, function)
  end
end

IO.puts(Problem6.solution())
# => 25_164_150

IO.puts(Problem6.solution(10))
# => 2_640
