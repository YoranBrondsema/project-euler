defmodule Prob4 do
  def largest_palindrome(nr_digits) do
    with max <- round(:math.pow(:math.pow(10, nr_digits) - 1, 2)) do
      _largest_palindrome(nr_digits, max, max)
    end
  end

  defp _largest_palindrome(nr_digits, max, cur) do
    if _is_palindrome(cur) and _is_product_of(cur, nr_digits) do
      cur
    else
      _largest_palindrome(nr_digits, max, cur - 1)
    end
  end

  defp _is_product_of(n, nr_digits) do
    _has_factor_between(
      n,
      round(:math.pow(10, nr_digits - 1)),
      round(:math.pow(10, nr_digits)) - 1
    )
  end

  defp _has_factor_between(_, max, max), do: false
  defp _has_factor_between(n, min, max) when rem(n, min) === 0 and div(n, min) <= max, do: true
  defp _has_factor_between(n, min, max), do: _has_factor_between(n, min + 1, max)

  defp _is_palindrome(n) do
    with s <- Integer.to_string(n) do
      s === String.reverse s
    end
  end
end

Prob4.largest_palindrome(3)
|> IO.inspect
