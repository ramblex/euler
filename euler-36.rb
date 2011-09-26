# 
# 
# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.
# Find the sum of all numbers, less than one million, which are palindromic in
# base 10 and base 2.
# (Please note that the palindromic number, in either base, may not include
# leading zeros.)
# 
def binary_is_palindrome(decimal)
  str = ""
  while decimal > 0
    str += (decimal % 2).to_s
    decimal /= 2
  end
  str == str.reverse
end

p (1..1000000).find_all {|x| x.to_s == x.to_s.reverse && binary_is_palindrome(x)}.inject(:+)
