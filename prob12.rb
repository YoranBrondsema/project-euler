require './helper'

include Helper

acc = 1
i = 1
while Helper::number_divisors(acc) < 500 do
	i += 1
	acc += i
end
puts acc
