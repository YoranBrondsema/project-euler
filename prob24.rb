# ANSWER: 2783915604

require 'pp'
require './helper'
include Helper

INDEX = 1000000-1

def perm_with_rank(rank, digits)
  return [] if digits.empty?

  nr_perm = factorial(digits.length - 1)
  i = rank / nr_perm
  digit = digits.to_a.sort[i]
  digits.delete(digit)
  return [digit] + perm_with_rank(rank - i*nr_perm, digits)
end

puts perm_with_rank(INDEX, Set.new((0..9).to_a)).join("")
