def bubble_sort(arr)
  return arr if arr.length < 2
  for i in (0..arr.length - 1)
    swapped = false
    for j in (0..arr.length - i - 2)
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

p bubble_sort([9,4,6,2,7,1,8])