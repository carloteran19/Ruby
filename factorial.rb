def factorial(a)
  if a ==0 || a == 1 then return 1 end
  return a * factorial(a - 1)
end

puts factorial(4)