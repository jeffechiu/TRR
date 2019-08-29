class Country < ApplicationRecord
	include AppHelpers::Deletions

	validates_presence_of :name
	validates_presence_of :abbrev
	validates_presence_of :logo

	before_destroy do
		cannot_destroy_object()
	end

	def numPlayers
		self.players.all.size
	end
end
