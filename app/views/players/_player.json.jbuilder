json.extract! player, :id, :summoner, :position, :portrait, :fname, :lname, :age, :country_id, :team_id, :created_at, :updated_at
json.url player_url(player, format: :json)
