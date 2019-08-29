# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_06_090803) do

  create_table "champions", force: :cascade do |t|
    t.string "name"
    t.string "class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "abbrev"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "patch"
    t.float "length"
    t.integer "week"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "abbrev"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_games", force: :cascade do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.integer "champion_id"
    t.integer "kills"
    t.integer "deaths"
    t.integer "assists"
    t.integer "doubles"
    t.integer "triples"
    t.integer "quadras"
    t.integer "pentas"
    t.integer "fbkill"
    t.integer "fbdeath"
    t.integer "fbassist"
    t.integer "drakes"
    t.integer "herald"
    t.integer "barons"
    t.float "dmg"
    t.integer "gold"
    t.integer "goldspent"
    t.integer "wardsplaced"
    t.integer "wardskilled"
    t.integer "viswards"
    t.integer "viswardbuys"
    t.integer "cs10"
    t.integer "oppcs10"
    t.integer "gold10"
    t.integer "oppgold10"
    t.integer "gold15"
    t.integer "oppgold15"
    t.integer "xp10"
    t.integer "oppxp10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "elders"
    t.integer "minions"
    t.integer "monstersownjg"
    t.integer "monstersenemyjg"
    t.index ["champion_id"], name: "index_player_games_on_champion_id"
    t.index ["game_id"], name: "index_player_games_on_game_id"
    t.index ["player_id"], name: "index_player_games_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "summoner"
    t.string "position"
    t.string "portrait"
    t.string "fname"
    t.string "lname"
    t.integer "age"
    t.integer "country_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_players_on_country_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "team_games", force: :cascade do |t|
    t.integer "team_id"
    t.integer "game_id"
    t.integer "kills"
    t.integer "deaths"
    t.integer "assists"
    t.integer "fbkill"
    t.integer "fbdeath"
    t.integer "fbassist"
    t.integer "drakes"
    t.integer "herald"
    t.integer "barons"
    t.integer "elders"
    t.float "dmg"
    t.integer "gold"
    t.integer "goldspent"
    t.integer "wardsplaced"
    t.integer "wardskilled"
    t.integer "viswards"
    t.integer "viswardbuys"
    t.integer "cs10"
    t.integer "oppcs10"
    t.integer "gold10"
    t.integer "oppgold10"
    t.integer "gold15"
    t.integer "oppgold15"
    t.integer "xp10"
    t.integer "oppxp10"
    t.string "side"
    t.integer "pick1_id"
    t.integer "pick2_id"
    t.integer "pick3_id"
    t.integer "pick4_id"
    t.integer "pick5_id"
    t.integer "ban1_id"
    t.integer "ban2_id"
    t.integer "ban3_id"
    t.integer "ban4_id"
    t.integer "ban5_id"
    t.string "result"
    t.integer "towers"
    t.integer "firsttower"
    t.float "fttime"
    t.integer "firstmid"
    t.integer "first3towers"
    t.integer "minions"
    t.integer "monstersownjg"
    t.integer "monstersenemyjg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ban1_id"], name: "index_team_games_on_ban1_id"
    t.index ["ban2_id"], name: "index_team_games_on_ban2_id"
    t.index ["ban3_id"], name: "index_team_games_on_ban3_id"
    t.index ["ban4_id"], name: "index_team_games_on_ban4_id"
    t.index ["ban5_id"], name: "index_team_games_on_ban5_id"
    t.index ["game_id"], name: "index_team_games_on_game_id"
    t.index ["pick1_id"], name: "index_team_games_on_pick1_id"
    t.index ["pick2_id"], name: "index_team_games_on_pick2_id"
    t.index ["pick3_id"], name: "index_team_games_on_pick3_id"
    t.index ["pick4_id"], name: "index_team_games_on_pick4_id"
    t.index ["pick5_id"], name: "index_team_games_on_pick5_id"
    t.index ["team_id"], name: "index_team_games_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "abbrev"
    t.string "owner"
    t.integer "founded"
    t.integer "league_id"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_teams_on_country_id"
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "role"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
