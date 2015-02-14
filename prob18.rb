require 'pp'

def max_sum(i, j, triangle)
  if i < triangle.length
    return triangle[i][j] + [max_sum(i+1, j, triangle), max_sum(i+1, j+1, triangle)].max
  else
    return 0
  end
end

s_triangle = File.read('prob18-data.txt')
triangle = []
s_triangle.split(/\n/).each do |s_row|
  row = []
  s_row.split(/ /).each { |s_i| row << s_i.to_i }
  triangle << row
end

puts max_sum(0, 0, triangle)
