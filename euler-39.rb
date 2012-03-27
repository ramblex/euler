count = Array.new(1001, 0)

a = 1

while true
  b = 1

  while true
    c = Math.sqrt(a**2 + b**2)
    p = a + b + c
    if b == 1 and p > 1000
      puts "Max: #{count.each_with_index.max}"
      exit
    end
    break if p > 1000
    if c % 1 == 0
      count[p] += 1
    end
    b += 1
  end

  a += 1
end
