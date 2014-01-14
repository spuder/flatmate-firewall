class Computer < ActiveRecord::Base
	belongs_to :user
	validates :mac_address, length: { maximum: 17 }
end
