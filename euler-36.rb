def binary_is_palindrome(decimal)
  str = ""
  while decimal > 0
    str += (decimal % 2).to_s
    decimal /= 2
  end
  str == str.reverse
end

p (1..1000000).find_all {|x| x.to_s == x.to_s.reverse && binary_is_palindrome(x)}.inject(:+)
