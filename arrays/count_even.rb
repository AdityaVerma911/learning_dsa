def count_even(arr)
  arr.reduce(0) do |count, n|
    count += 1 if n % 2 == 0
    count
  end
end

p count_even([1, 2, 3, 4, 5, 6])

