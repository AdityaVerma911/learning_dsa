def selection_sort(arr)
  for i in (0..(arr.length - 1))
    min_index = i

    for j in ((i + 1)..(arr.length - 1))
      min_index = j if arr[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i]
  end
  arr
end

p selection_sort([9,4,6,2,7,1,8,3])

