defmodule Prob2 do
  def fibonacci_list_less_than(n) do
    _fibonacci_list_less_than(n, 1)
  end

  defp _fibonacci_list_less_than(n, i) do
    with cur <- fibonacci(i)
    do
      cond do
        cur <= n -> [ cur | _fibonacci_list_less_than(n, i + 1) ]
        true -> []
      end
    end
  end

  defp fibonacci(1), do: 1
  defp fibonacci(2), do: 2
  defp fibonacci(n) do
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

IO.inspect Enum.sum(
  Enum.filter(Prob2.fibonacci_list_less_than(4000000), &(rem(&1, 2) == 0))
)
