require './helper'

include Helper

day = {day: 1, month: 1, year: 1900}
day_of_week = 0
nr_sundays = 0
while day != {day: 31, month: 12, year: 2000}
  # Sunday is 6
  nr_sundays += 1 if day[:year] >= 1901 and day_of_week == 6 and day[:day] == 1
  day = next_day(day)
  day_of_week = (day_of_week + 1) % 7
end

puts nr_sundays
