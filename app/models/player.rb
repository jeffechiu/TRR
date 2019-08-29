class Player < ApplicationRecord
  belongs_to :country
  belongs_to :team
  has_many :player_games

  validates_presence_of :summoner
  validates_presence_of :position
  validates_presence_of :portrait
  validates_presence_of :fname
  validates_presence_of :lname
  validates_presence_of :age

  validates_numericality_of :age

  scope :kills,		-> { order('kills') }
  scope :deaths,	-> { order('deaths') }
  scope :assists,	-> { order('assists') }

  def kills
  	kills = 0
  	self.player_games.each do |p|
  		kills += p.kills
  	end
  	return kills
  end

  def deaths
  	deaths = 0
  	self.player_games.each do |p|
  		deaths += p.deaths
  	end
  	return deaths
  end

  def assists
  	assists = 0
  	self.player_games.each do |p|
  		assists += p.assists
  	end
  	return deaths
  end

  def doubles
    doubles = 0
    self.player_games.each do |p|
      doubles += p.doubles
    end
    return doubles
  end

  def triples
    triples = 0
    self.player_games do |p|
      triples += p.triples
    end
    return triples
  end

  def quadras
    quadras = 0
    self.player_games do |p|
      quadras += p.quadras
    end
    return quadras
  end

  def pentas
    pentas = 0
    self.player_games do |p|
      pentas += p.pentas
    end
    return pentas
  end


  def fbkills
    fbkills = 0
    self.player_games do |p|
      fbkills += p.fbkill
    end
    return fbkills
  end

  def fbassists
    fbass = 0
    self.player_games do |p|
      fbass += p.fbassist
    end
    return fbass
  end

  def fbdeaths
    fbdeath = 0
    self.player_games do |p|
      fbdeath += p.fbdeath
    end
    return fbdeath
  end

  def fbpart
    fbpart = 0
    self.player_games do |p|
      fbpart += p.fbkill
      fbpart += p.fbassist
    end
    return fbpart
  end

  def drakes
    drakes = 0
    self.player_games do |p|
      drakes += p.drakes
    end
    return drakes
  end

  def barons
    barons = 0
    self.player_games do |p|
      barons += p.barons
    end
    return barons
  end

  def heralds
    heralds = 0
    self.player_games do |p|
      heralds += p.heralds
    end
    return heralds
  end

  def avgLen
    games = self.player_games.size
    total = 0
    self.player_games.games do |g|
      total += g.length
    end
    avg = total/games
    return avg
  end

  def dpm
    dmg = 0
    self.player_games do |p|
      dmg += p.dmg
    end
    dpm = dmg/self.avgLen
    return dpm
  end

  def gpm
    gold = 0
    self.player_games do |p|
      gold += p.gold
    end
    gpm = gold/self.avgLen
    return gpm
  end

  def goldspend
    

end
