require 'prime'
require 'pp'
require 'set'

module Helper
  def number_divisors(n)
    divisors = Prime.prime_division(n)
    number = 1
    divisors.each do |p|
      number *= (p[1] + 1)
    end
    return number
  end

  # Returns the number of steps in the Collatz sequence for n
  def collatz(n)
    return 1 if n == 1

    if n.even?
      return 1 + collatz(n / 2)
    else
      return 1 + collatz(3*n + 1)
    end
  end

  # Returns an array with all the proper divisors of integer n
  def proper_divisors(n)
    divisors = Set.new([1])
    2.upto(Math.sqrt(n)) do |i|
      divisors = divisors.merge([i, n/i]) if n.modulo(i).zero?
    end
    divisors.to_a.sort
  end

  def factorial(n)
    (1..n).to_a.inject(1){ |a, b| a * b}
  end

  # Returns the String representation of the sum of a and b (a and b are also in the String representation)
  def sum(a, b)
    a_a = a.split("")
    a_b = b.split("")
    a_sum = []
    # Make the two arrays of the same length
    max_length = [a_a.length, a_b.length].max
    pad_zero!(a_a, max_length)
    pad_zero!(a_b, max_length)

    rem = 0
    0.upto(max_length-1).each do |i|
      sum = a_a.at(i).to_i + a_b.at(i).to_i + rem
      rem = sum / 10
      a_sum << sum % 10
    end

    index = max_length
    while rem > 0 do
      a_sum << rem % 10
      rem /= 10
      index += 1
    end

    a_sum.join
  end

  # str is an integer in string form. Returns the sum of the digits in str
  def sum_digits(str)
    str.split("").map(&:to_i).inject(0) { |a, b| a + b }
  end

  # Pads with "0" until length
  def pad_zero!(a, length)
    (a.length ... length).each { |i| a << "0" }
  end

  # Returns the next day after date
  def next_day(date)
    day = date[:day]
    month = date[:month]
    year = date[:year]

    next_day = day + 1
    next_month = month
    next_year = year
    # February
    if month == 2
      if (is_leap_year?(year) and next_day > 29) or (!is_leap_year?(year) and next_day > 28)
        next_day = 1
        next_month += 1
      end
      # April, June, September, November
    elsif month == 4 or month == 6 or month == 9 or month == 11
      if next_day > 30
        next_day = 1
        next_month += 1
      end
      # January, March, May, July, August, October, December
    else
      if next_day > 31
        next_day = 1
        next_month += 1
      end
    end

    if next_month > 12
      next_month = 1
      next_year += 1
    end

    {day: next_day, month: next_month, year: next_year}
  end

  def is_leap_year?(year)
    (year.modulo(4).zero? and !year.modulo(100).zero?) or year.modulo(400).zero?
  end
end
