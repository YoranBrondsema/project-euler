defmodule Prob1 do
  def sum_of_multiples_of_3_and_5(0), do: 0
  def sum_of_multiples_of_3_and_5(n) when rem(n, 3) === 0 do
    n + sum_of_multiples_of_3_and_5(n - 1)
  end
  def sum_of_multiples_of_3_and_5(n) when rem(n, 5) === 0 do
    n + sum_of_multiples_of_3_and_5(n - 1)
  end
  def sum_of_multiples_of_3_and_5(n), do: sum_of_multiples_of_3_and_5(n - 1)
end

Prob1.sum_of_multiples_of_3_and_5(999)
|> IO.puts
