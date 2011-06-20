a = 220
b = 284

sums = []

(0..10000).each do |a|
  sums << (1..a).find_all { |x| x != a && a % x == 0 }.inject(:+)
end
p sums

total = 0
(1..10000).each do |a|
  a_sum = sums[a]
  (1..10000).each do |b|
    if a != b
      b_sum = sums[b]
      total += (a + b) if a_sum == b && b_sum == a
    end
  end
end
p (total / 2)
