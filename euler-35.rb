primes = (2..1000000).to_a
(2..1000000).each do |num|
  primes.delete_if {|x| x != num && x % num == 0}
  break if primes.size == 78498
end
p primes.size

num_circular_primes = 0
checked = Array.new(0, primes.size)
primes.each_with_index do |prime, idx|
  next if checked[idx]
  numbers = prime.to_s.split(//)
  start = 1
  is_circular = true
  num_primes_in_circle = 1
  numbers.length.times do
    reorder_prime = (numbers[start..numbers.size] + numbers[0..start-1]).join.to_i
    unless reorder_prime == prime
      num_primes_in_circle += 1
      prime_idx = primes.index(reorder_prime)
      if prime_idx.nil?
        is_circular = false
        break
      else
        checked[prime_idx] = 1
      end
    end
    start += 1
  end
  num_circular_primes += num_primes_in_circle if is_circular
end
p num_circular_primes
