def binary_search(arr,target)
  left = 0
  right = arr.length - 1

  while left <= right
    middle = (left + right) / 2

    if arr[middle] == target
      return middle if arr[middle] == target
    elsif target < arr[middle]
      right = middle - 1
    else
      left = middle + 1
    end
  end
  -1
end

p binary_search([1,2,3,4,5,6,7,8,9],6)