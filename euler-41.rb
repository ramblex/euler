def is_prime(n)
  return false if n <= 1
  2.upto(Math.sqrt(n).to_i) do |x|
    return false if n%x == 0
  end
  true
end

digits = (1..9).to_a.reverse

digits.each do |top|
  digits[-top..-1].permutation(top) do |pe|
    num = pe.join.to_i
    if is_prime num
      p num
      exit
    end
  end
end
