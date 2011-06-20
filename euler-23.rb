abundant_numbers = []

(1..1000).each do |number|
  divisor_sum = (1..number).find_all {|x| number != x && number % x == 0}.inject(:+)
  abundant_numbers << number if !divisor_sum.nil? && number < divisor_sum
end

p abundant_numbers
