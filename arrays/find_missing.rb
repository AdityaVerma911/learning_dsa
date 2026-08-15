def find_missing(arr)
  expected_sum = (arr.length + 1) * arr.length / 2
  arr_sum = arr.reduce(0) {|sum, i| sum + i}
  p expected_sum - arr_sum
end

find_missing([3, 0, 1])
# => 2

find_missing([0, 1])
# => 2

find_missing([9, 6, 4, 2, 3, 5, 7, 0, 1])
# => 8

find_missing([0])
# => 1