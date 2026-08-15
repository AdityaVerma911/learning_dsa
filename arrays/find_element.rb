
def contains?(arr,target)
  i,j = 0,arr.length - 1

  while i <= j
    if arr[i] == target
      return true
    elsif arr[j] == target
      return true
    else
      i += 1
      j -= 1
    end
  end
  false
end

p contains?([1, 2, 3, 4], 3)
p contains?([1, 2, 3, 4], 7)