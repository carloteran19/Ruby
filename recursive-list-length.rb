def length(a)
  if a.length == 0 then return 0 end
  if a.length == 1 then return 1 end

  p a
    return length(a.drop(1)) + 1
end

a = [1,2,3,4,5,6,7,8]

puts length(a)

