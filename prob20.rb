require './helper'
include Helper


fac = "1"
2.upto(100) do |i|
  acc = fac
  (i-1).times do
    acc = sum(acc, fac)
  end
  fac = acc
end

puts sum_digits(fac)
