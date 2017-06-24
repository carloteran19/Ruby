#Write a function add_numbers(nums_array) that takes in an array of
# Fixnums and returns the sum of those numbers. Write this method recursively.

def add_numbers(nums_array)
  if nums_array.length == 1 then return nums_array[0] end
  if nums_array.length == 0 then return nil end

  nums_array[1] = nums_array[0] + nums_array[1]
  nums_array.shift
  add_numbers(nums_array)
end


  p add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([]) # => returns nil