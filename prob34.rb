require './helper'
include Helper

MAX = 100000

result = 0

(3..MAX).each do |n|
  digits = n.to_s.split('').map{ |i| i.to_i }
  sum = digits.map{ |i| factorial(i) }.inject(0, :+)

  result += n if n == sum
end

pp result
