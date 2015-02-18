require 'pp'

DIGITS = (0..9).to_a

DIGITS.each do |x|
  DIGITS.each do |y|
    top = [x, y].join.to_i

    break if top == 0

    DIGITS.each do |z|
      bottom1 = [z, y].join.to_i
      bottom2 = [y, z].join.to_i
      bottom3 = [x, z].join.to_i
      bottom4 = [z, x].join.to_i

      if y != 0 && top < bottom1 && top * z == bottom1 * x
        pp "#{top}/#{bottom1} == #{x}/#{z}"
      end

      if top < bottom2 && top * z == bottom2 * x
        pp "#{top}/#{bottom2} == #{x}/#{z}"
      end

      if top < bottom3 && top * z == bottom3 * y
        pp "#{top}/#{bottom3} == #{y}/#{z}"
      end

      if top < bottom4 && top * z == bottom4 * y
        pp "#{top}/#{bottom4} == #{y}/#{z}"
      end
    end
  end
end
