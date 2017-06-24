
def reverse(string)
  if string.length <= 1 then return string

  else
  newString = string
  newString = newString.chop

  return string[-1] + reverse(newString)
  end
end



# Test Cases
p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""