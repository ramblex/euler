prime_limit = 200000

primes = (2..prime_limit).to_a

(2..prime_limit).each do |num|
  primes.delete_if { |x| x != num && x % num == 0 }
  break if primes.size == 17984
end

p primes[10000]
