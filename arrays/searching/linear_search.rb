def linear_search(arr,target)
  arr.each do |i|
    return true if i == target
  end
  false
end

p linear_search([9,5,4,7,1,2], 7)
p linear_search([9,5,4,7,1,2], 10)