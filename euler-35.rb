primes = (2..1000000).to_a
(2..500000).each do |num|
  primes.delete_if {|x| x != num && x % num == 0}
  break if primes.size == 78498
end
p primes

circular_primes = []
primes.each do |prime|
  numbers = prime.to_s.split(//)
  start = 1
  is_circular = true
  numbers.length.times do
    reorder_prime = numbers[start..numbers.size] + numbers[0..start-1]
    is_circular = false unless primes.include? reorder_prime.join.to_i
    start += 1
  end
  circular_primes << prime if is_circular
end
p circular_primes.size
