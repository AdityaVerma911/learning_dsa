def two_sum(nums, target)
  seen = {}

  nums.each_with_index do |num, i|
    if seen.key?(target - num)
      return [seen[target - num], i]
    else
      seen[num] = i
    end
  end
  nil
end
p two_sum([2, 7, 11, 15], 9)
# => [0, 1]

p two_sum([3, 2, 4], 6)
# => [1, 2]

p two_sum([3, 3], 6)
# => [0, 1]