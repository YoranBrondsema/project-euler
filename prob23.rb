require 'pp'
require './helper'
include Helper

LIMIT = 28123

is_abundant_number = []

# Find all abundant numbers below 28123
1.upto(LIMIT) do |i|
  is_abundant_number[i] = false

  sum_div = proper_divisors(i).inject(0) { |a,b| a + b }
  is_abundant_number[i] = true if sum_div > i
end

abundant_numbers = []
is_abundant_number.each_with_index do |b, n|
  abundant_numbers << n if b
end

is_sum = Array.new(LIMIT, false)
abundant_numbers.repeated_combination(2).each do |comb|
  sum = comb[0] + comb[1]
  is_sum[sum] = true if sum <= LIMIT
end

sum = 0
is_sum.each_with_index do |b, n|
  sum += n if !b
end

puts sum
