def insertion_sort(arr)
  for i in 0..(arr.length - 1)
    key = arr[i]
    j = i - 1

    while j >= 0 && key < arr[j]
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = key
  end
  arr
end

p insertion_sort([10,4,8,3,9,2,1])