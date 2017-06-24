require "csv"
input_array = ARGV

# Create a Hash for the value of each Character
$scores = {
    "A" => 1,
    "B" => 2,
    "C" => 3,
    "D" => 4,
    "E" => 5,
    "F" => 6,
    "G" => 7,
    "H" => 8,
    "I" => 9,
    "J" => 10,
    "K" => 11,
    "L" => 12,
    "M" => 13,
    "N" => 14,
    "O" => 15,
    "P" => 16,
    "Q" => 17,
    "R" => 18,
    "S" => 19,
    "T" => 20,
    "U" => 21,
    "V" => 22,
    "W" => 23,
    "X" => 24,
    "Y" => 25,
    "Z" => 26,
}

f = File.open(input_array[0])
# put the content of the file into an Array

contentsArray=[]  # start with an empty array
f.each_line {|line|

  contentsArray = line.split(",")
}


# Sort Array by Alphabetical Order
contentsArray.sort!

counter = 0
position = 0
nameValue = 0
value = 0

# Open SCV File
CSV.open("name_scores.csv", "wb") do |csv|
  csv << ["NAME", "POSITION", "VALUE", "SCORE"]


  contentsArray.each {
      |x|
    name = x.gsub('"', '')
    arr = name.split("")
    arr.each {
        |y|
      value += $scores[y]
      counter += $scores[y]
    }
    position += 1


    csv << [name, position, value, value * position]
    value = 0
  }

end
f.close









