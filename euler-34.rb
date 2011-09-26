# 
# 
# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
# Find the sum of all numbers which are equal to the sum of the factorial of their
# digits.
# Note: as 1! = 1 and 2! = 2 are not sums they are not included.
# 
def factorial(x)
  (1..x).inject(1) {|sum, x| sum * x}
end

total = 0
(3..1000000).each do |num|
  p num if num % 1000 == 0
  sum = num.to_s.split(//).inject(0) {|sum, x| sum + (factorial(x.to_i))}
  if num == sum
    total += num
  end
end
p total
