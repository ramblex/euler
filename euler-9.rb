a = 500
while a > 0
  b = 500
  while b > 0
    c = Math.sqrt((a*a) + (b*b))
    if c == c.floor and (a + b + c) == 1000
      puts "MATCH: #{a} #{b} #{c}"
      puts a * b * c
    end
    b -= 1
  end
  a -= 1
end
