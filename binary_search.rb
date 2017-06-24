# Write a recursive method bsearch(array, target). Keep in mind: Binary search will only work
# on a sorted array! Sort every array input you plug into your function.

def bsearch(array, target, startPoint=0, midPoint=array.length/2, endPoint=array.length - 1)


  if endPoint < midPoint || startPoint > midPoint
    nil
  elsif array.length == 1 && array[0] != target
    nil
  elsif array[midPoint] == target
    true
  elsif array[midPoint] < target
  startPoint = midPoint + 1
  midPoint = (startPoint + endPoint) / 2
  bsearch(array, target, startPoint, midPoint, endPoint)
  else array[midPoint] > target
  endPoint = midPoint - 1
  midPoint = (startPoint + endPoint) / 2
  bsearch(array, target, startPoint, midPoint, endPoint)
  end
end


#Test
p bsearch([1, 2, 3], 1) # => true
p bsearch([2, 3, 4, 5], 3) # => true
p bsearch([2, 4, 6, 8, 10], 6) # => true
p bsearch([1, 3, 4, 5, 9], 5) # => true
p bsearch([1, 2, 3, 4, 5, 6], 6) # => true
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil