def is_prime?(n)
  return false if n < 2
  i = 2
  while i * i <= n
    return false if n % i == 0
    i += 1
  end
  true
end

def print_primes(n)
  (1..n).each do |i|
    puts i if is_prime?(i)
  end
end

print_primes(100)