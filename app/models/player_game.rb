class PlayerGame < ApplicationRecord
  belongs_to :player
  belongs_to :game
  belongs_to :champion

end
