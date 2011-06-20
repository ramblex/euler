digits = [0,1,2]

digits.each_with_index do |digit|
  puts digit
  other_digits = digits.clone
  other_digits.delete(digit)
  p other_digits
end
