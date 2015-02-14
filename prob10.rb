require 'prime'

limit = 2 * 10**6
sum = 0
Prime.instance.each do |p|
	break if p > limit
	sum += p
end
puts sum
