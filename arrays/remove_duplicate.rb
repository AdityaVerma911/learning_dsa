def remove_duplicates(arr)
  seen = Hash.new(false)
  new_arr = []

  arr.each do |i|
    unless seen[i]
      new_arr << i
      seen[i] = true
    end
  end
  new_arr
end

p remove_duplicates([1, 2, 2, 3, 1])
# => [1, 2, 3]

p remove_duplicates([5, 5, 5])
# => [5]

p remove_duplicates([1, 2, 3])
# => [1, 2, 3]

p remove_duplicates([])
# => []