class Roomate
	attr_accessor :name, :computers, :paid
end

require 'yaml'
require 'date'
$aListOfRoomates = []
#loadRoomates


# data = 
# File.oopen('roomates.yaml', 'w') { 
# 	|f| YAML.dump(data, f)
# }


def findRoomate(aRoomate)
	roomateIndex = $aListOfRoomates.find_index {
	|item| item.name == (aRoomate)
	}
	if roomateIndex == nil
		puts " Unable to find user '" + aRoomate + "'"
		return nil
	else
		return roomateIndex
	end

end

def addMacAddress(aRoomate, aMacAddress)
	roomateIndex = findRoomate(aRoomate)
	if roomateIndex != nil
		$aListOfRoomates[roomateIndex].computers.push (aMacAddress.to_s)
		$aListOfRoomates[roomateIndex].computers = $aListOfRoomates[roomateIndex].computers.uniq
		saveRoomates
	end
	return nil
end

def addUser(aName)
	aNewRoomate = Roomate.new
	aNewRoomate.name = aName
	aNewRoomate.computers = ["00:00:00:11:11:11", '22:22:22:33:33:33']
	aNewRoomate.paid = Date.parse('2014-01-02')
	$aListOfRoomates.push(aNewRoomate)
	saveRoomates
	return nil
end

def removeRoomate(aRoomate)
	#puts "\nAbout to remove " +  aRoomate
	roomateIndex = findRoomate(aRoomate)
	if roomateIndex != nil
		$aListOfRoomates.delete_at(roomateIndex)
	else
		puts "Unable to delete, no such user "  + roomateIndex.to_s
	end
	#puts $aListOfRoomates[2].inspect
	saveRoomates
	#return nil
end

def addPayment(aRoomate, aDate)
	roomateIndex = findRoomate(aRoomate)
	if $aListOfRoomates[roomateIndex].paid.include? aDate
		puts "Roomate " + aRoomate.to_s + " appears to have alreday paid for " + aDate.to_s
	else
		$aListOfRoomates[roomateIndex].paid.push(aDate)
	end
	saveRoomates
	#return nil
end

def getPayments(aRoomate)
	roomateIndex = findRoomate(aRoomate)
	return $aListOfRoomates[roomateIndex].paid
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


#addUser("joe")
#removeRoomate('penny')
#puts "\npenny is at index "  + findRoomate('penny').to_s
#findRoomate('herpaderp')
#removeRoomate('herpaderp')
#removeRoomate('penny')
#addMacAddress('sheldon', '99:99:99:99:99:99')
#addPayment('sheldon', Date.today)
puts ""
puts getPayments('sheldon')


# puts aListOfRoomates[2].name

# aListOfRoomates.each do | num|
# 	puts num.name
# end



