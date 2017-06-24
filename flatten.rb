def flatten(array)
  if array.class == Integer then return array end
  if array.length <= 1 then return array
  else
    if array[0].class == Array
      newArray = array
      newArray = newArray.shift
      return array[0][0] + flatten(newArray)
    else
      newArray = array
      newArray = newArray.shift

      return array[0] + flatten(newArray)
    end
  end
end

[2,[3,4]]
[3,4]
1 + 2 [3,4]

p flatten([1,2,[3,4]])