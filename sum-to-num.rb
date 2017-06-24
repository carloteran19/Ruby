def sum_to(n)
  if n < 0 then return nil end
  if n <= 1 then return 1 end
  return n + sum_to(n - 1)
end





# Test Cases
p sum_to(5)  # => returns 15
p sum_to(1)  # => returns 1
p sum_to(9)  # => returns 45
p sum_to(-8)  # => returns nil