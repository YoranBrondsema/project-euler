require 'pp'
require 'pry'

digits = (1..9).to_a
results = []

(1..10).each do |nr_digits_left|
  digits.combination(nr_digits_left).each do |comb_left|
    comb_left.permutation do |a_left|
      left = a_left.join.to_i

      rem_digits = digits - a_left
      nr_digits = rem_digits.size
      (1..nr_digits).each do |nr_digits_right|

        rem_digits.combination(nr_digits_right).each do |comb_right|
          comb_right.permutation do |a_right|
            right = a_right.join.to_i

            min_digits_result = [nr_digits_left, nr_digits_right].min
            max_digits_result = nr_digits_left + nr_digits_right + 2

            rem2_digits = rem_digits - a_right
            nr2_digits = rem2_digits.size

            if nr2_digits >= min_digits_result && nr2_digits <= max_digits_result
              # It's a possibility
              result = left * right

              if rem2_digits.sort == result.to_s.split('').map{ |s| s.to_i }.sort
                results << result
              end
            end
          end
        end
      end
    end
  end
end

pp results.uniq.inject(0, :+)
