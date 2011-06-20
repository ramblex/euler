spiral_size = 5

sum = 1
(2..1001).each do |num|
  if num % 2 != 0
    square = (num * num)
    sum += square
    3.times do
      square -= (num - 1)
      sum += square
    end
  end
end

p sum
