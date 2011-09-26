# 
# 
# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.
# 
p (1..1000).inject(0) {|sum, el| sum + (el ** el)}
