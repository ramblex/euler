# Work out a number of prime numbers

require 'eratosthenes'

primes = get_primes(2000)
max_num_primes = 0
max_primes_product = 0

(-1000..1000).each do |a|
  (-1000..1000).each do |b|
    n = 0
    n += 1 while primes.include?((n * n) + (a * n) + b)

    if n > max_num_primes
      max_num_primes = n
      max_primes_product = (a * b)
      puts "Max num primes #{n} -> #{max_primes_product}"
    end
  end
end
