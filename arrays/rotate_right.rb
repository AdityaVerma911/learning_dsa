def rotate_right(arr)
  return nil if arr.empty?
  i = arr.length - 1
  last = arr[i]
  while i >= 0
    if i.eql?(0)
      arr[i] = last
      return arr
    end
    arr[i] = arr[i - 1]
    i -= 1
  end
end

p rotate_right([1, 2, 3, 4, 5])
# => [5, 1, 2, 3, 4]

p rotate_right([1, 2, 3])
# => [3, 1, 2]

p rotate_right([1])
# => [1]

p rotate_right([])
# => []