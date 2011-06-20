triangle_number = 0
(1..20).each do |i|
  triangle_number += i
  # Find factors
  num_divisors = (1..(triangle_number/ 2)).find_all { |x| triangle_number % x == 0 }.size
  p "#{triangle_number} #{num_divisors}"
  if num_divisors >= 500
    p triangle_number
    exit
  end
end
