def pyramid(n)
  i = 1

  while i <= n
    j = n - i
    while j >= 1
      print ' '
      j -= 1
    end

    k = 1
    while k <= (2 * i) - 1
      print '*'
      k += 1
    end
    puts ''
    i += 1
  end
end

pyramid(5)