# 
# 
# A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91  99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# 
range = (100..999).to_a.reverse
answers = []

range.each do |a|
  (100..a).to_a.reverse.each do |b|
    c = (a * b).to_s.split(//)
    answers << (a * b) if c == c.reverse
  end
end

p answers.max
