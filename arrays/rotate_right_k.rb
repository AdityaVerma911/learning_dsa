def reverse(arr,left,right)
  while left < right
    arr[left], arr[right] = arr[right], arr[left]
    left += 1
    right -= 1
  end
end

def rotate_right_k(arr,k)
  return arr if arr.empty?

  k = k % arr.length
  return arr if k == 0

  reverse(arr,0,arr.length - 1)

  reverse(arr,0, k - 1)

  reverse(arr, k, arr.length - 1)

  arr
end

arr = [1, 2, 3, 4, 5]

p rotate_right_k(arr, 2)

