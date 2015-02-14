require 'pp'

def to_words(n)
  if n < 20
    case n
    when 0
      return "zero"
    when 1
      return "one"
    when 2
      return "two"
    when 3
      return "three"
    when 4
      return "four"
    when 5
      return "five"
    when 6
      return "six"
    when 7
      return "seven"
    when 8
      return "eight"
    when 9
      return "nine"
    when 10
      return "ten"
    when 11
      return "eleven"
    when 12
      return "twelve"
    when 13
      return "thirteen"
    when 14
      return "fourteen"
    when 15
      return "fifteen"
    when 16
      return "sixteen"
    when 17
      return "seventeen"
    when 18
      return "eighteen"
    when 19
      return "nineteen"
    end
  elsif n < 100
    tens = ""
    case (n / 10)
    when 2
      tens = "twenty"
    when 3
      tens = "thirty"
    when 4
      tens = "forty"
    when 5
      tens = "fifty"
    when 6
      tens = "sixty"
    when 7
      tens = "seventy"
    when 8
      tens = "eighty"
    when 9
      tens = "ninety"
    end

    # Multiple of 10
    if n % 10 == 0
      return tens
    else
      return "#{tens}-#{to_words(n%10)}"
    end
  elsif n < 1000
    # Multiple of 100
    if n % 100 == 0
      return "#{to_words(n / 100)} hundred"
    else
      return "#{to_words(n / 100)} hundred and #{to_words(n%100)}"
    end
  elsif n == 1000
    return "one thousand"
  end
end

# Returns the number of non-space and non-hyphen characters in string str
def number_characters(str)
  return str.split(//).delete_if{ |c| c == "-" or c == " "}.length
end

nr_chars = 0
1.upto(1000) do |i|
  nr_chars += number_characters(to_words(i))
end
puts nr_chars
