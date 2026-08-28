def inc_dec_triangle(n)
  i = 1
  while i <= n
    j = 1
    while j <= i
      print '*'
      j += 1
    end
    puts ''
    i += 1
  end

  i = n - 1
  while i >= 1
    j = i
    while j >= 1
      print '*'
      j -= 1
    end
    puts ''
    i -= 1
  end
end

inc_dec_triangle(5)