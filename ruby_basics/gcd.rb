def gcd(a, b)
  while b != 0
    remainder = a % b
    a = b
    b = remainder
  end
  a
end

p gcd(48, 18)