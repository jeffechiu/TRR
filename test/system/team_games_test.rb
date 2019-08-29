require "application_system_test_case"

class TeamGamesTest < ApplicationSystemTestCase
  setup do
    @team_game = team_games(:one)
  end

  test "visiting the index" do
    visit team_games_url
    assert_selector "h1", text: "Team Games"
  end

  test "creating a Team game" do
    visit team_games_url
    click_on "New Team Game"

    fill_in "Assists", with: @team_game.assists
    fill_in "Ban1", with: @team_game.ban1_id
    fill_in "Ban2", with: @team_game.ban2_id
    fill_in "Ban3", with: @team_game.ban3_id
    fill_in "Ban4", with: @team_game.ban4_id
    fill_in "Ban5", with: @team_game.ban5_id
    fill_in "Barons", with: @team_game.barons
    fill_in "Cs10", with: @team_game.cs10
    fill_in "Deaths", with: @team_game.deaths
    fill_in "Dmg", with: @team_game.dmg
    fill_in "Drakes", with: @team_game.drakes
    fill_in "Elders", with: @team_game.elders
    fill_in "Fbassist", with: @team_game.fbassist
    fill_in "Fbdeath", with: @team_game.fbdeath
    fill_in "Fbkill", with: @team_game.fbkill
    fill_in "First3towers", with: @team_game.first3towers
    fill_in "Firstmid", with: @team_game.firstmid
    fill_in "Firsttower", with: @team_game.firsttower
    fill_in "Fttime", with: @team_game.fttime
    fill_in "Game", with: @team_game.game_id
    fill_in "Gold", with: @team_game.gold
    fill_in "Gold10", with: @team_game.gold10
    fill_in "Gold15", with: @team_game.gold15
    fill_in "Goldspent", with: @team_game.goldspent
    fill_in "Herald", with: @team_game.herald
    fill_in "Kills", with: @team_game.kills
    fill_in "Minions", with: @team_game.minions
    fill_in "Monstersenemyjg", with: @team_game.monstersenemyjg
    fill_in "Monstersownjg", with: @team_game.monstersownjg
    fill_in "Oppcs10", with: @team_game.oppcs10
    fill_in "Oppgold10", with: @team_game.oppgold10
    fill_in "Oppgold15", with: @team_game.oppgold15
    fill_in "Oppxp10", with: @team_game.oppxp10
    fill_in "Pick1", with: @team_game.pick1_id
    fill_in "Pick2", with: @team_game.pick2_id
    fill_in "Pick3", with: @team_game.pick3_id
    fill_in "Pick4", with: @team_game.pick4_id
    fill_in "Pick5", with: @team_game.pick5_id
    fill_in "Result", with: @team_game.result
    fill_in "Side", with: @team_game.side
    fill_in "Team", with: @team_game.team_id
    fill_in "Towers", with: @team_game.towers
    fill_in "Viswardbuys", with: @team_game.viswardbuys
    fill_in "Viswards", with: @team_game.viswards
    fill_in "Wardskilled", with: @team_game.wardskilled
    fill_in "Wardsplaced", with: @team_game.wardsplaced
    fill_in "Xp10", with: @team_game.xp10
    click_on "Create Team game"

    assert_text "Team game was successfully created"
    click_on "Back"
  end

  test "updating a Team game" do
    visit team_games_url
    click_on "Edit", match: :first

    fill_in "Assists", with: @team_game.assists
    fill_in "Ban1", with: @team_game.ban1_id
    fill_in "Ban2", with: @team_game.ban2_id
    fill_in "Ban3", with: @team_game.ban3_id
    fill_in "Ban4", with: @team_game.ban4_id
    fill_in "Ban5", with: @team_game.ban5_id
    fill_in "Barons", with: @team_game.barons
    fill_in "Cs10", with: @team_game.cs10
    fill_in "Deaths", with: @team_game.deaths
    fill_in "Dmg", with: @team_game.dmg
    fill_in "Drakes", with: @team_game.drakes
    fill_in "Elders", with: @team_game.elders
    fill_in "Fbassist", with: @team_game.fbassist
    fill_in "Fbdeath", with: @team_game.fbdeath
    fill_in "Fbkill", with: @team_game.fbkill
    fill_in "First3towers", with: @team_game.first3towers
    fill_in "Firstmid", with: @team_game.firstmid
    fill_in "Firsttower", with: @team_game.firsttower
    fill_in "Fttime", with: @team_game.fttime
    fill_in "Game", with: @team_game.game_id
    fill_in "Gold", with: @team_game.gold
    fill_in "Gold10", with: @team_game.gold10
    fill_in "Gold15", with: @team_game.gold15
    fill_in "Goldspent", with: @team_game.goldspent
    fill_in "Herald", with: @team_game.herald
    fill_in "Kills", with: @team_game.kills
    fill_in "Minions", with: @team_game.minions
    fill_in "Monstersenemyjg", with: @team_game.monstersenemyjg
    fill_in "Monstersownjg", with: @team_game.monstersownjg
    fill_in "Oppcs10", with: @team_game.oppcs10
    fill_in "Oppgold10", with: @team_game.oppgold10
    fill_in "Oppgold15", with: @team_game.oppgold15
    fill_in "Oppxp10", with: @team_game.oppxp10
    fill_in "Pick1", with: @team_game.pick1_id
    fill_in "Pick2", with: @team_game.pick2_id
    fill_in "Pick3", with: @team_game.pick3_id
    fill_in "Pick4", with: @team_game.pick4_id
    fill_in "Pick5", with: @team_game.pick5_id
    fill_in "Result", with: @team_game.result
    fill_in "Side", with: @team_game.side
    fill_in "Team", with: @team_game.team_id
    fill_in "Towers", with: @team_game.towers
    fill_in "Viswardbuys", with: @team_game.viswardbuys
    fill_in "Viswards", with: @team_game.viswards
    fill_in "Wardskilled", with: @team_game.wardskilled
    fill_in "Wardsplaced", with: @team_game.wardsplaced
    fill_in "Xp10", with: @team_game.xp10
    click_on "Update Team game"

    assert_text "Team game was successfully updated"
    click_on "Back"
  end

  test "destroying a Team game" do
    visit team_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team game was successfully destroyed"
  end
end
