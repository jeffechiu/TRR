class TeamGame < ApplicationRecord
  belongs_to :team
  belongs_to :game
  belongs_to :pick1, :class_name => "Champion"
  belongs_to :pick2, :class_name => "Champion"
  belongs_to :pick3, :class_name => "Champion"
  belongs_to :pick4, :class_name => "Champion"
  belongs_to :pick5, :class_name => "Champion"
  belongs_to :ban1, :class_name => "Champion"
  belongs_to :ban2, :class_name => "Champion"
  belongs_to :ban3, :class_name => "Champion"
  belongs_to :ban4, :class_name => "Champion"
  belongs_to :ban5, :class_name => "Champion"

  validates_presence_of :kills
  validates_presence_of :deaths
  validates_presence_of :assists
  
end
