def fibonacci(n)
  if 0 == n then return 0 end
  if 1 == n then return 1 end
  return fibonacci(n-1) + fibonacci(n-2)
end

puts fibonacci(6)

