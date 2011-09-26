# 
# 2520 is the smallest number that can be divided by each of the numbers from 1 to
# 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?
# 
ans = 1
while true
  if (1..20).all? { |e| ans % e == 0 }
    p ans
    exit
  end
  if ans % 1000000 == 0
    p ans
  end
  ans += 1
end
