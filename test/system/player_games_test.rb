require "application_system_test_case"

class PlayerGamesTest < ApplicationSystemTestCase
  setup do
    @player_game = player_games(:one)
  end

  test "visiting the index" do
    visit player_games_url
    assert_selector "h1", text: "Player Games"
  end

  test "creating a Player game" do
    visit player_games_url
    click_on "New Player Game"

    fill_in "Assists", with: @player_game.assists
    fill_in "Barons", with: @player_game.barons
    fill_in "Champion", with: @player_game.champion_id
    fill_in "Cs10", with: @player_game.cs10
    fill_in "Deaths", with: @player_game.deaths
    fill_in "Dmg", with: @player_game.dmg
    fill_in "Doubles", with: @player_game.doubles
    fill_in "Drakes", with: @player_game.drakes
    fill_in "Fbassist", with: @player_game.fbassist
    fill_in "Fbdeath", with: @player_game.fbdeath
    fill_in "Fbkill", with: @player_game.fbkill
    fill_in "Game", with: @player_game.game_id
    fill_in "Gold", with: @player_game.gold
    fill_in "Gold10", with: @player_game.gold10
    fill_in "Gold15", with: @player_game.gold15
    fill_in "Goldspent", with: @player_game.goldspent
    fill_in "Herald", with: @player_game.herald
    fill_in "Kills", with: @player_game.kills
    fill_in "Oppcs10", with: @player_game.oppcs10
    fill_in "Oppgold10", with: @player_game.oppgold10
    fill_in "Oppgold15", with: @player_game.oppgold15
    fill_in "Oppxp10", with: @player_game.oppxp10
    fill_in "Pentas", with: @player_game.pentas
    fill_in "Player", with: @player_game.player_id
    fill_in "Quadras", with: @player_game.quadras
    fill_in "Triples", with: @player_game.triples
    fill_in "Viswardbuys", with: @player_game.viswardbuys
    fill_in "Viswards", with: @player_game.viswards
    fill_in "Wardskilled", with: @player_game.wardskilled
    fill_in "Wardsplaced", with: @player_game.wardsplaced
    fill_in "Xp10", with: @player_game.xp10
    click_on "Create Player game"

    assert_text "Player game was successfully created"
    click_on "Back"
  end

  test "updating a Player game" do
    visit player_games_url
    click_on "Edit", match: :first

    fill_in "Assists", with: @player_game.assists
    fill_in "Barons", with: @player_game.barons
    fill_in "Champion", with: @player_game.champion_id
    fill_in "Cs10", with: @player_game.cs10
    fill_in "Deaths", with: @player_game.deaths
    fill_in "Dmg", with: @player_game.dmg
    fill_in "Doubles", with: @player_game.doubles
    fill_in "Drakes", with: @player_game.drakes
    fill_in "Fbassist", with: @player_game.fbassist
    fill_in "Fbdeath", with: @player_game.fbdeath
    fill_in "Fbkill", with: @player_game.fbkill
    fill_in "Game", with: @player_game.game_id
    fill_in "Gold", with: @player_game.gold
    fill_in "Gold10", with: @player_game.gold10
    fill_in "Gold15", with: @player_game.gold15
    fill_in "Goldspent", with: @player_game.goldspent
    fill_in "Herald", with: @player_game.herald
    fill_in "Kills", with: @player_game.kills
    fill_in "Oppcs10", with: @player_game.oppcs10
    fill_in "Oppgold10", with: @player_game.oppgold10
    fill_in "Oppgold15", with: @player_game.oppgold15
    fill_in "Oppxp10", with: @player_game.oppxp10
    fill_in "Pentas", with: @player_game.pentas
    fill_in "Player", with: @player_game.player_id
    fill_in "Quadras", with: @player_game.quadras
    fill_in "Triples", with: @player_game.triples
    fill_in "Viswardbuys", with: @player_game.viswardbuys
    fill_in "Viswards", with: @player_game.viswards
    fill_in "Wardskilled", with: @player_game.wardskilled
    fill_in "Wardsplaced", with: @player_game.wardsplaced
    fill_in "Xp10", with: @player_game.xp10
    click_on "Update Player game"

    assert_text "Player game was successfully updated"
    click_on "Back"
  end

  test "destroying a Player game" do
    visit player_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player game was successfully destroyed"
  end
end
