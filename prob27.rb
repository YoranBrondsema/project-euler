require 'prime'

M = 1000

n_max = 0
a_max = nil
b_max = nil

Prime.take_while{ |p| p < M }.each do |b|
  a = [-M+1, -b].max

  while a < M do
    n = 1
    s = a + b + 1
    while Prime.prime?(s) do
      n += 1
      s += 2*n + a - 1
    end

    # Last n was non-prime
    n = n - 1

    if n > n_max
      n_max = n
      a_max = a
      b_max = b
    end

    # a cannot be even
    a = a + 2
  end
end

puts a_max * b_max
