def left_aligned_right_triangle(n)
  i = 1
  while i <= n
    j = n - i
    while j >= 1
      print ' '
      j -= 1
    end

    k = n + 1 - i
    while k <= n
      print '*'
      k += 1
    end
    puts ''
    i += 1
  end
end

left_aligned_right_triangle(5)