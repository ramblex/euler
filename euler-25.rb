f1 = 1
f2 = 1
f = 1

i = 3
until f.to_s.length >= 1000
  f = f1 + f2
  f1 = f2
  f2 = f
  i += 1
  p f.to_s.length
end

p (i - 1)
