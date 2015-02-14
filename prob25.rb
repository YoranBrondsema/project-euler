# ANSWER: 4782

require './helper'
include Helper

pp = "1"
p = "1"

index = 2
cur = p
while cur.length < 1000
  cur = sum(p, pp)
  pp = p
  p = cur
  index += 1
end

puts index
