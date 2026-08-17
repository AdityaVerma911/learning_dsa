def quick_sort(arr)
  return arr if arr.length <= 1
  middle_index = arr.length / 2

  pivot = arr[middle_index]

  less = arr.select {|i| i < pivot }
  equal = arr.select {|i| i == pivot }
  greater = arr.select {|i| i > pivot }

  return quick_sort(less) + equal + quick_sort(greater)
end

p quick_sort([10,4,8,3,9,2,1])