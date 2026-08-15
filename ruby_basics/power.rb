# Write a Ruby method that calculates:
#
#  base^exponent
#
# without using Ruby's ** operator.

def power(b,p)
  return 1 if p == 0
  return b * power(b,p - 1)
end

p power(2,3)