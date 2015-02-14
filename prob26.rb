# ANSWER: 983

require 'pp'
require 'set'

def longest_recurring_cycle(denom)
  pow = 1
  counter = 0
  rems = Set.new

  while true
    rem = pow % denom
    if rem == 0
      return 0
    elsif rems.include?(rem)
      return counter
    else
      rems.add(rem)
      counter += 1
      pow = rem * 10
    end
  end
end

max_length = 0
d = 2
2.upto(1000-1) do |denom|
  length = longest_recurring_cycle(denom)
  if length > max_length
    max_length = length
    d = denom
  end
end
pp d
