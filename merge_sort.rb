# Build a method #merge_sort that takes in an array and returns a sorted array,
# using a recursive merge sort methodology.
def merge_sort(array)
  if array.length == 1
    return array
  else
    # Split Array into two
    array1, array2 = array.each_slice((array.size/2.0).round).to_a

    # Split using recursion
    merge(merge_sort(array1), merge_sort(array2))
  end
end

  # merge both arrays
def merge(array1, array2)
  arr = []

  while array1.length > 0 || array2.length > 0
  if array1.length == 0
    arr = arr + array2
    array2 = []
  elsif array2.length == 0
    arr = arr + array1
    array1 = []
  elsif array1[0] < array2[0]
    arr << array1.shift
  else
    arr << array2.shift
  end
  end
  return arr
end


# Test Case
p merge_sort([26, 1, 7, 3, 4, 5])
