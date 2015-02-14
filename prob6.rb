limit = 100

square_of_sum = (1..limit).inject(0) { |n, i| n + i }
square_of_sum *= square_of_sum

sum_of_square = (1..limit).map { |i| i*i }
sum_of_square = sum_of_square.inject(0) { |n, i| n + i }

puts (square_of_sum - sum_of_square)
