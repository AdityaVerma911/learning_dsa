def count_digits(n)
  return 1 if n == 0
  count = 0
  while n != 0
    count += 1
    n = n / 10
  end
  count
end

p count_digits(12345678)