n = 284
while 1
  p n if n % 10000 == 0
  t = n * (n+1) / 2
  p = n * (3*n - 1) / 2
  h = n * (2*n - 1)
  break if t == p && p == h
  n += 1
end
p t
