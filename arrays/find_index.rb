def find_index(arr,target)
  i = 0
  while i <= arr.length - 1
    return i if arr[i] == target
    i += 1
  end
  -1
end

p find_index([10, 20, 30, 40], 30) # => 2

p find_index([10, 20, 30, 40], 10) # => 0

p find_index([10, 20, 30, 40], 99) # => -1

p find_index([5, 5, 10], 5)        # => 0