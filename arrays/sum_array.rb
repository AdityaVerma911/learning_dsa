def sum_array(arr)
  arr.reduce(0) { |sum, n| sum + n }
end

p sum_array([1, 2, 3,4,5])