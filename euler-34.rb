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
