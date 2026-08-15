def intersection(arr_1, arr_2)
  seen = {}
  result = []

  arr_1.each do |num|
    seen[num] = true
  end

  arr_2.each do |num|
    if seen[num]
      result << num
      seen.delete(num)
    end
  end

  result
end

p intersection([1, 2, 2, 3], [2, 2, 4])