def right_triangle(val)
  return unless val.is_a?(Integer)

  for i in 1..val
    j = 1
    while j <= i
      print '*'
      j += 1
    end
    puts ''
  end
end

right_triangle(5)