S = 1001
n_max = (S + 1) / 2

s = Array.new
s[1] = 1
s[2] = 25
(2...n_max).each do |n|
  sum = 0
  (1..4).each do |i|
    sum += (2*n-1)*(2*n-1) + (2*n)*i
  end
  s[n+1] = s[n] + sum
end
puts s[n_max]
