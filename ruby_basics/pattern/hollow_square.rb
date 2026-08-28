def hollow_square(n)
  i = 1
  while i <= n
    if i == 1 || i == n
      n.times do
        print '*'
      end
    else
      j = 1
      while j <= n
        if j == 1 || j == n
          print '*'
        else
          print ' '
        end
        j += 1
      end
    end
    puts ''
    i += 1
  end
end

hollow_square(5)