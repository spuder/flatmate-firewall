class Roomate
	attr_accessor :name, :computers, :paid
end

require 'yaml'
$aListOfRoomates = []
#loadRoomates


# data = 
# File.oopen('roomates.yaml', 'w') { 
# 	|f| YAML.dump(data, f)
# }



def addMacAddress(aRoomate, aMacAddress)
	return nil
end

def addUser(aName)
	aNewRoomate = Roomate.new
	aNewRoomate.name = aName
	aNewRoomate.computers = ""
	aNewRoomate.paid = Date.parse('2014-01-02')
	$aListOfRoomates.push(aNewRoomate)
	saveRoomates
	return nil
end

def removeRoomate(aRoomate)
	puts "\nAbout to remove " +  aRoomate
	roomateIndex = $aListOfRoomates.find_index {
	|item| item.name == (aRoomate)
	}
	puts "roomateIndex  is " + roomateIndex.to_s
	if roomateIndex != nil
		$aListOfRoomates.delete_at(roomateIndex)
	else
		puts "Unable to delete, no such user "  + roomateIndex.to_s
	end
	#puts $aListOfRoomates[2].inspect
	saveRoomates
	return nil
end

def changePayment(aRoomate)
	return nil
end

def validatePayment(aRoomate)
	return hasPaid
end

def blockUsers(aListOfRoomates)
	return nil
end

def loadRoomates()
	$aListOfRoomates = YAML.load_file('roomates.yaml')
	return nil
end

def saveRoomates()
	File.open('roomates.yaml', 'w') {
		|f| f.write(YAML::dump($aListOfRoomates))
	}
end

loadRoomates


#puts $aListOfRoomates[0].name


# puts $aListOfRoomates.find_index {
# 	|item| item.name == ('penny')
# }


addUser("joe")
removeRoomate('penny')



# puts aListOfRoomates[2].name

# aListOfRoomates.each do | num|
# 	puts num.name
# end



