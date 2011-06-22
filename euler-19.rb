require 'date'

num_sundays = 0
(Date.new(1901, 1, 1)..Date.new(2000, 12, 31)).each do |date|
  num_sundays += 1 if date.strftime("%d").to_i == 1 && date.strftime("%A") == "Sunday"
end
p num_sundays
