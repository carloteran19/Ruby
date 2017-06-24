require 'benchmark'
# For this problem, we want to write a method that determines if two strings are anagrams.
# Two words are anagrams if they can be rearranged to form one another.

# Part1
def first_anagram?(string1, string2)

  arr = string1.split("")
  new_arr = arr.permutation.to_a
  $is_anagram = false

  anagrams = new_arr.map{
    |x|
     x.join
  }

  anagrams.each {|x|
  if x == string2
    $is_anagram = true
  end
  }
  return $is_anagram
end


# Part 2
def second_anagram?(string1, string2)
  arr1 = string1.split("")
  arr2 = string2.split("")
  $is_anagram = false

  arr3 = (arr1-arr2) | (arr2-arr1)

  if arr3.length == 0
    $is_anagram = true
  end

  return $is_anagram
end


# Part 3
def third_anagram?(string1, string2)
  arr1 = string1.split("").sort!
  arr2 = string2.split("").sort!

  if arr1 == arr2
    return true
  else
    return false
  end
end



# Part 4
def fourth_anagram?(string1, string2)
  hash1 = Hash.new 0
  hash2 = Hash.new 0

  string1.each_char do |letter|
    hash1[letter] += 1
  end

  string2.each_char do |letter|
    hash2[letter] += 1
  end

  return hash1 == hash2
end


# Test Case
puts "First Anagram"
p first_anagram?("carlo","acrlo")
puts "Performance"
puts Benchmark.measure { first_anagram?("carlo","acrlo")}

puts "Second Anagram"
p second_anagram?("carlo","acrlo")
puts "Performance"
puts Benchmark.measure { second_anagram?("carlo","acrlo")}

puts "Third Anagram"
p third_anagram?("carlo","acrlo")
puts "Performance"
puts Benchmark.measure { third_anagram?("carlo","acrlo")}

puts "Fourth Anagram"
p fourth_anagram?("carlo","acrlo")
puts "Performance"
puts Benchmark.measure { fourth_anagram?("carlo","acrlo")}


