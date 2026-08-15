def union(arr_1, arr_2)
  # Set.new(arr_1).union(arr_2).to_a
  set = Set.new

  arr_1.each {|num| set << num}
  arr_2.each {|num| set << num}

  set.to_a
end

p union([1, 2, 3], [2, 3, 4])
# => [1, 2, 3, 4]

