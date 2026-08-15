def sum_of_digits(n)
  q = n
  sum = 0

  while q != 0
    r = q % 10
    sum += r
    q = q / 10
  end

  sum
end

p sum_of_digits(1234)