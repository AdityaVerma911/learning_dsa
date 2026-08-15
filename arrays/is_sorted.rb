def is_sorted?(arr)
  i = 0
  while i <= arr.length - 2
    return false if arr[i] > arr[i + 1]
    i += 1
  end
  true
end

p is_sorted?([1, 2, 3, 4, 5])
# => true

p is_sorted?([1, 2, 2, 3, 4])
# => true

p is_sorted?([1, 3, 2, 4])
# => false

p is_sorted?([5, 4, 3, 2, 1])
# => false

p is_sorted?([])
# => true

p is_sorted?([10])
# => true