
def flatten(arr,result = nil)
  result ||= []
  arr.each do |i|
    if i.is_a?(Array)
      flatten(i, result)
    else
      result << i
    end
  end
  result
end

p flatten([1,2,3,[4,5,[6]],[7,[8,9]]])