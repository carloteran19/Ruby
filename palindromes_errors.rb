# Problem 6: Palindromes
#
# Write a method, palindromes, that accepts an array of numbers as an argument and returns
# an array of only the numbers that are palindromes. Palindromes are numbers that are the
# same forward and backward. Numbers in the returned array should be in the same order as
# in the original array.
#
# For Example:
#
# 101 is the same forward and backward. It is a palindrome.
# 102 is 201 backwards; it is not a palindrome.

def palindromes(arr)
  ind = 0
  palindromes = []

  begin
    #Argument to check if all the elements of the Array are Integer
    if arr == nil or !arr.all? {|i| i.is_a?(Integer) }
      raise ArgumentError.new('Please insert a valid Array of Integers')
    end

    while ind < arr.length
    if arr[ind].to_s.reverse == arr[ind].to_s
      palindromes.push(arr[ind])
    end

    ind = ind + 1
    end
  end

  palindromes
end

puts palindromes([42,54,6,707])

