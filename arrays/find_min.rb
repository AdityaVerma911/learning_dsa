def find_min(arr)
  min = arr[0]
  arr.each do |i|
    min = i if i < min
  end
  min
end

p find_min([6,3,8,9,3,1])