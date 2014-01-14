class User < ActiveRecord::Base
	#TODO: Do youy say computer or computers? 
	#It almost seems like you say it plural even though the object is singular
	has_many :computers
end
