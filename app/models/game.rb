class Game < ApplicationRecord
  has_many :player_games
  has_many :team_games

  validates_presence_of :patch
  validates_presence_of :length
  validates_presence_of :week
  validates_presence_of :number

  validates_numericality_of :length
  validates_numericality_of :week

  def len
  	sec = self.length % 1
  	minutes = self.length - sec
  	seconds = (sec * 60).to_i
  	min = minutes.to_s
  	s = seconds.to_s
  	return min + ":" + s
  end

end
