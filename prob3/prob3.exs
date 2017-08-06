defmodule Prob3 do
  def largest_prime_factor(n), do: _largest_prime_factor(n, 2)

  defp _largest_prime_factor(n, cur) when rem(n, cur) === 0 do
    with factor <- div(n, cur) do
      if is_prime(factor) do
        factor
      else
        _largest_prime_factor(n, cur + 1)
      end
    end
  end
  defp _largest_prime_factor(n, cur) do
    _largest_prime_factor(n, cur + 1)
  end


  defp is_prime(n), do: _is_prime(n, 2)

  defp _is_prime(n, n), do: true
  defp _is_prime(n, cur) when rem(n, cur) === 0, do: false
  defp _is_prime(n, cur), do: _is_prime(n, cur + 1)
end

Prob3.largest_prime_factor(600851475143)
|> IO.inspect
