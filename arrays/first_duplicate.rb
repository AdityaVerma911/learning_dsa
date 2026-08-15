def first_duplicate(arr)
  seen = Hash.new(false)

  arr.each do |i|
    if seen[i]
      return i
    else
      seen[i] = true
    end
  end
  nil
end

p first_duplicate([2, 1, 3, 2, 4])
# => 2

p first_duplicate([1, 2, 3, 4])
# => nil

p first_duplicate([5, 5, 2, 3])
# => 5

p first_duplicate([1, 2, 3, 2, 1])
# => 2