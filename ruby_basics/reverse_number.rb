
def reverse_number(n)
  reversed = 0

  while n != 0
    digit = n % 10
    reversed = reversed * 10 + digit
    n = n / 10
  end
  reversed
end

p reverse_number(1234)