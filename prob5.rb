require 'prime'

def prime_factors(n)
	p = Prime.prime_division(n)
	res = Hash.new
	p.each { |a| res[a[0]] = a[1] }
	return res
end


factors = Hash.new
(2..20).each do |i|
	f = prime_factors(i)
	f.each do |k, v|
		if !factors.has_key?(k) or factors[k] < v
			factors[k] = v
		end
	end
end

puts factors

number = 1
factors.each do |k,v|
	number *= k ** v
end
puts number
