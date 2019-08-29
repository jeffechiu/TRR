class Champion < ApplicationRecord

	has_many :ban1s, :class_name => "TeamGame", :foreign_key => "ban1_id"
	has_many :ban2s, :class_name => "TeamGame", :foreign_key => "ban2_id"
	has_many :ban3s, :class_name => "TeamGame", :foreign_key => "ban3_id"
	has_many :ban4s, :class_name => "TeamGame", :foreign_key => "ban4_id"
	has_many :ban5s, :class_name => "TeamGame", :foreign_key => "ban5_id"

	has_many :pick1s, :class_name => "TeamGame", :foreign_key => "pick1_id"
	has_many :pick2s, :class_name => "TeamGame", :foreign_key => "pick2_id"
	has_many :pick3s, :class_name => "TeamGame", :foreign_key => "pick3_id"
	has_many :pick4s, :class_name => "TeamGame", :foreign_key => "pick4_id"
	has_many :pick5s, :class_name => "TeamGame", :foreign_key => "pick5_id"

	validates_presence_of :name
	validates_presence_of :class
	validates_presence_of :picture

	validates_inclusion_of :class, in: %w( Controller_Catcher Controller_Enchanter Fighter_Juggernaut Fighter_Diver Mage_Battlemage Mage_Burst Mage_Artillery Marksman 
	Slayer_Assassin Slayer_Skirmisher Tank_Vanguard Tank_Warden Specialist ), message: "Must be a certified class"

	ROLES = [["Controller_Catcher", :controller_catcher], ["Controller_Enchanter", :controller_enchanter], ["Fighter_Juggernaut", :fighter_juggernaut]
	,["Fighter_Diver", :fighter_diver], ["Mage_Burst", :mage_burst], ["Mage_Battlemage", :mage_battlemage], ["Mage_Artillery", :mage_artillery], ["Marksman", :marksman],
	["Slayer_Assassin", :slayer_assassin], ["Slayer_Skirmisher", :slayer_skirmisher], ["Tank_Vanguard", :tank_vanguard], ["Tank_Warden", :tank_warden], ["Specialist", :specialist]]

	def role?(authorized_role)
	    return false if role.nil?
	    role.downcase.to_sym == authorized_role
	end

end
