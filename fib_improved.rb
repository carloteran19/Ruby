# Normal Solution
def dumb_fib(num)
  num <= 1 ? num : dumb_fib(num-1) + dumb_fib(num - 2)
end

# Improved Solution
# ||= is used to store the cache if it is not found

def smart_fib(num, cache = {})
  if num <= 1
    num
  else
    cache[num] ||= smart_fib(num -1, cache) + smart_fib(num - 2, cache)
  end
end

#Test Case
