require './helper'

include Helper

max = 0
1.upto(1000000) do |i|
  if Helper::collatz(i) > max
    max = Helper::collatz(i)
    puts "i: #{i}\tmax: #{max}"
  end
end
