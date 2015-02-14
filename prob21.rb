require './helper'
include Helper

require 'pp'

divisors = {}
1.upto(10000) do |n|
  divisors[n] = proper_divisors(n)
end

divisor_sums = {}
divisors.each_pair do |n, div|
  sum = div.inject(0) { |a, b| a + b }
  divisor_sums[sum] ||= []
  divisor_sums[sum] << n
end

amicable = {}
divisor_sums.each_pair do |sum, numbers|
  numbers.each do |n|
    amicable[n] = sum if n != sum and divisor_sums[n] and divisor_sums[n].include?(sum)
  end
end
pp amicable.keys.inject(0) { |a, b| a + b }
