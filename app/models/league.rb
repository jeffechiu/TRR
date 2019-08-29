class League < ApplicationRecord
	has_many :teams

	validates_presence_of :name
	validates_presence_of :logo
	validates_presence_of :abbrev
	#validates_presence_of :description

end
