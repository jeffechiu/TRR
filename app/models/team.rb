class Team < ApplicationRecord
  belongs_to :league
  belongs_to :country
  has_many :players
end
