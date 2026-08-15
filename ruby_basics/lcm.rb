def gcd(a, b)
  while b != 0
    remainder = a % b
    a = b
    b = remainder
  end
  a
end

def lcm(a, b)
  gcd = gcd(a, b)
  (a * b)/ gcd
end

p lcm(4,6)