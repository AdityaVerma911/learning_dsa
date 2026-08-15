def find_max(arr)
  max = arr[0]
  i = 1
  while i < arr.length
    max = arr[i] if arr[i] > max
    i += 1
  end
  max
end

p find_max([6,3,8,9,3,1])