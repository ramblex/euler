# 
# Triangle, pentagonal, and hexagonal numbers are generated by the following
# formulae:
# 
# 
# Triangle
#  
# Tn=n(n+1)/2
#  
# 1, 3, 6, 10, 15, ...
# 
# 
# Pentagonal
#  
# Pn=n(3n1)/2
#  
# 1, 5, 12, 22, 35, ...
# 
# 
# Hexagonal
#  
# Hn=n(2n1)
#  
# 1, 6, 15, 28, 45, ...
# 
# 
# It can be verified that T285 = P165 = H143 = 40755.
# Find the next triangle number that is also pentagonal and hexagonal.
# 
# Takes advantage of the fact that all equations are non-decreasing
n = 286
p = 164
h = 142

while true
  tn = n * (n + 1) / 2
  p n if n % 1000 == 0

  (p..n).each do |i|
    pn = i * ((3*i) - 1) / 2
    if pn > tn
      p = i
      break
    end
    if pn == tn
      puts "pn == tn"
      (h..i).each do |j|
        hn = j * ((2*j) - 1)
        if pn > tn
          h = i
          break
        end
        if hn == pn
          puts "Answer: #{tn}"
          exit
        end
      end
    end
  end
  n += 1
end
