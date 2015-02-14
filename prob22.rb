require 'pp'

names = File.read('prob22-data.txt').split(',').map { |name| name[1..-2] }.sort
total_score = 0
names.each_with_index do |name, index|
  score = (index+1) * name.split('').inject(0) { |a, c| a + (c.ord - 'A'.ord + 1) }
  total_score += score
end

puts total_score
