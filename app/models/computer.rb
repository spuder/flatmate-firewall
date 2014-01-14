class Computer < ActiveRecord::Base
	belongs_to :user
	validates :mac_address, :length => { :maximum => 17 }
	validates_numericality_of :user_id, :only_integer => true, :greater_than_or_equal_to => 0 
end
