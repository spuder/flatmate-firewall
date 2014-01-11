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

aNewRoomate.name = bob

#File.open('roomates.yaml')