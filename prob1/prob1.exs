defmodule Prob1 do
  def sum_of_multiples_of_3_and_5(0), do: 0
  def sum_of_multiples_of_3_and_5(n) do
    cur =
      cond do
        rem(n, 3) == 0 -> n
        rem(n, 5) == 0 -> n
        true -> 0
      end
    cur + sum_of_multiples_of_3_and_5(n - 1)
  end
end

IO.puts Prob1.sum_of_multiples_of_3_and_5(999)
