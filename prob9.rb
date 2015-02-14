for a in 1..1000
	for b in a..1000
		c = 1000 - a - b
		puts "#{a} #{b} #{c} #{a*b*c}" if (a**2 + b**2) == c**2
	end
end
