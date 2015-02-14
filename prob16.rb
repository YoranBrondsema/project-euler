require './helper'

include Helper

s = "2"
sum_digits = 2
1000.times do |i|
  sum_digits = s.split("").map(&:to_i).inject(0) { |a, b| a + b }
  s = sum(s, s)
end
puts sum_digits
