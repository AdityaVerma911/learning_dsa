def reverse_array(arr)
  i, j = 0, arr.length - 1

  while i < j
    arr[i], arr[j] = arr[j], arr[i]
    i += 1
    j -= 1
  end
  arr
end

p reverse_array([1, 2, 3, 4, 5, 6])