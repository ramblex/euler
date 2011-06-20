num_divisors = 0
number = 0
increment = 1

until num_divisors >= 500
  number += increment
  increment += 1
  num_divisors = (1..Math.sqrt(number)).find_all {|x| number % x == 0}.size * 2
  p "#{number} => #{num_divisors}"
end

p number
