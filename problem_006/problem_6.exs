defmodule Problem6 do
  @moduledoc """
  find the diff
  between the sum of the squares
  of the first hundred natural numbers
  and the square of the sum.
  """

  @size 100

  def solution(size \\ @size) do
    sum_nums = reducer(size, &(&1 + &2))
    sum_sqrs = reducer(size, &(&1 * &1 + &2))

    sum_nums * sum_nums - sum_sqrs
  end

  defp reducer(size, function) do
    Enum.reduce(1..size, 0, function)
  end
end

IO.puts(Problem6.solution())
# => 25_164_150

IO.puts(Problem6.solution(10))
# => 2_640
