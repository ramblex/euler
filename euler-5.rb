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
