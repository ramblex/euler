a = [1,2]
next_num = 0
sum = 2
while next_num < 4000000 do
  p next_num
  next_num = a[0] + a[1]
  sum += next_num if next_num % 2 == 0
  a[0] = a[1]
  a[1] = next_num
end
p sum
