(2..10000000).each do |number|
 sum = number.to_s.split(//).inject(0) {|sum, x| sum + (x.to_i ** 5)}
 p number if sum == number
end
