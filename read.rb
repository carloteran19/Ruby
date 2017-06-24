f = File.open("testfile")

while line = f.gets do
  puts line
end

f.close