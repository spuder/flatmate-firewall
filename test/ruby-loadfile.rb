class Roomate
	attr_accessor :name, :computers, :paid
end

require 'yaml'
aListOfRoomates = YAML.load_file('roomates.yaml')
#puts aListOfRoomates.inspect

puts aListOfRoomates.first.name
puts aListOfRoomates[2].name

aListOfRoomates.each do | num|
	puts num.name
end

# data = 
# File.oopen('roomates.yaml', 'w') { 
# 	|f| YAML.dump(data, f)
# }

aNewRoomate = Roomate.new

aNewRoomate.name = "bob"
aNewRoomate.computers = "33:33:33:33:33"
aNewRoomate.paid = 2014-01-02


aListOfRoomates.push(aNewRoomate)
File.open('roomates.yaml', 'w') {
	|f| f.write(YAML::dump(aListOfRoomates))
}