# 
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#  a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.Find the
# product abc.
# 
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
