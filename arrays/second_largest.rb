def second_largest(arr)
  return nil if arr.length < 2

  if arr[0] > arr[1]
    max_1, max_2 = arr[0], arr[1]
  elsif arr[1] > arr[0]
    max_1, max_2 = arr[1], arr[0]
  else
    max_1 = arr[0]
    max_2 = nil
  end

  i = 2
  while i < arr.length
    if arr[i] > max_1
      max_2 = max_1
      max_1 = arr[i]
    elsif max_2.nil? || arr[i] > max_2
      max_2 = arr[i]
    end
    i += 1
  end
  p max_2
end

second_largest([10, 5, 20, 8]) # => 10

second_largest([3, 1, 7, 2])   # => 3

second_largest([10, 20, 20, 5]) # => 10

second_largest([-5, -2, -10])  # => -5