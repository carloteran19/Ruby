# Implement the bubble sort algorithm to sort an array of integers.
# What are the worst and best case asmyptotic time and space complexity of your solution?
def bubble_sort(array)
  n = array.length
  swapped = true   # Change to true if you make any swaps in the array


  while swapped == true

    swapped = false
      for i in (0..n-2) do
        if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
        end
      end
  end
return array
end


# Worst case scenario
# n - 1 times

# Test case
p bubble_sort([2,1,7,6,5,8,10,9,17])