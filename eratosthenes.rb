# Sieve of Eratosthenes
# Finds the prime number from 2 to prime_limit
def get_primes(prime_limit)
  primes = (2..prime_limit).to_a

  (2..prime_limit).each do |num|
    primes.delete_if { |x| x != num && x % num == 0 }
  end

  primes
end
