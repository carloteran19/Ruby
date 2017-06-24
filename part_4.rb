require "csv"
input_array = ARGV

name = "COLIN"
CSV.foreach(input_array) do |row|
  # use row here...
  if row[0] == name
    puts row[3]
  end
end
