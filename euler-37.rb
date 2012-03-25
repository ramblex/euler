require './other_primes'

truncatable_primes = []

def is_prime(n)
  return false if n <= 1
  2.upto(Math.sqrt(n).to_i) do |x|
    return false if n%x == 0
  end
  true
end

(8..1000000).to_a.each do |prime|
  next unless is_prime(prime)
  prime_s = prime.to_s.split(//)
  is_truncatable = true
  (1..prime_s.length - 1).to_a.each do |start_idx|
    unless is_prime(prime_s[start_idx..-1].join.to_i)
      is_truncatable = false
      break
    end
  end

  if is_truncatable
    (1..prime_s.length).to_a.each do |end_idx|
      unless is_prime(prime_s[0..-end_idx].join.to_i)
        is_truncatable = false
        break
      end
    end

    truncatable_primes << prime if is_truncatable
    break if truncatable_primes.length == 11
  end
end

p truncatable_primes.inject(:+)
