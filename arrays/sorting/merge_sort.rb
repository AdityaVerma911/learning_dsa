def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2

  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid...arr.length])

  return merge(left, right)
end

def merge(left, right)
  i,j = 0,0
  result = []
  while i < left.length && j < right.length
    if left[i] <= right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end

  while i < left.length
    result << left[i]
    i += 1
  end

  while j < right.length
    result << right[j]
    j += 1
  end
  return result
end

p merge_sort([6,4,8,2,9,5,10])