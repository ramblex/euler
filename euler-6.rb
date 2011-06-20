range = (1..100)
sum = range.inject(0) { |sum, el| sum + (el*el) }
squared_sum = range.inject(:+) ** 2

p (squared_sum - sum)
