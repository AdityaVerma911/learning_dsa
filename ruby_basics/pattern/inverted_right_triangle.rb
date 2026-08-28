def inverted_right_triangle(n)
  i = n
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

inverted_right_triangle(5)