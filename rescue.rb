#The following code raises an error. Modify the code to rescue this error and modify
#the inputs so that both arguments are converted into strings:

def concat_strings(str1, str2)
  begin

    str1 + str2

  rescue TypeError => e
    str1 = str1.to_s
    str2 = str2.to_s

    puts str1 + str2


  else
    puts str1 + str2

  end
end

concat_strings("This is half", " of a string.")
concat_strings("1 plus 1 equals ", 2)