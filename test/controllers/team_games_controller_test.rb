require 'test_helper'

class TeamGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_game = team_games(:one)
  end

  test "should get index" do
    get team_games_url
    assert_response :success
  end

  test "should get new" do
    get new_team_game_url
    assert_response :success
  end

  test "should create team_game" do
    assert_difference('TeamGame.count') do
      post team_games_url, params: { team_game: { assists: @team_game.assists, ban1_id: @team_game.ban1_id, ban2_id: @team_game.ban2_id, ban3_id: @team_game.ban3_id, ban4_id: @team_game.ban4_id, ban5_id: @team_game.ban5_id, barons: @team_game.barons, cs10: @team_game.cs10, deaths: @team_game.deaths, dmg: @team_game.dmg, drakes: @team_game.drakes, elders: @team_game.elders, fbassist: @team_game.fbassist, fbdeath: @team_game.fbdeath, fbkill: @team_game.fbkill, first3towers: @team_game.first3towers, firstmid: @team_game.firstmid, firsttower: @team_game.firsttower, fttime: @team_game.fttime, game_id: @team_game.game_id, gold: @team_game.gold, gold10: @team_game.gold10, gold15: @team_game.gold15, goldspent: @team_game.goldspent, herald: @team_game.herald, kills: @team_game.kills, minions: @team_game.minions, monstersenemyjg: @team_game.monstersenemyjg, monstersownjg: @team_game.monstersownjg, oppcs10: @team_game.oppcs10, oppgold10: @team_game.oppgold10, oppgold15: @team_game.oppgold15, oppxp10: @team_game.oppxp10, pick1_id: @team_game.pick1_id, pick2_id: @team_game.pick2_id, pick3_id: @team_game.pick3_id, pick4_id: @team_game.pick4_id, pick5_id: @team_game.pick5_id, result: @team_game.result, side: @team_game.side, team_id: @team_game.team_id, towers: @team_game.towers, viswardbuys: @team_game.viswardbuys, viswards: @team_game.viswards, wardskilled: @team_game.wardskilled, wardsplaced: @team_game.wardsplaced, xp10: @team_game.xp10 } }
    end

    assert_redirected_to team_game_url(TeamGame.last)
  end

  test "should show team_game" do
    get team_game_url(@team_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_game_url(@team_game)
    assert_response :success
  end

  test "should update team_game" do
    patch team_game_url(@team_game), params: { team_game: { assists: @team_game.assists, ban1_id: @team_game.ban1_id, ban2_id: @team_game.ban2_id, ban3_id: @team_game.ban3_id, ban4_id: @team_game.ban4_id, ban5_id: @team_game.ban5_id, barons: @team_game.barons, cs10: @team_game.cs10, deaths: @team_game.deaths, dmg: @team_game.dmg, drakes: @team_game.drakes, elders: @team_game.elders, fbassist: @team_game.fbassist, fbdeath: @team_game.fbdeath, fbkill: @team_game.fbkill, first3towers: @team_game.first3towers, firstmid: @team_game.firstmid, firsttower: @team_game.firsttower, fttime: @team_game.fttime, game_id: @team_game.game_id, gold: @team_game.gold, gold10: @team_game.gold10, gold15: @team_game.gold15, goldspent: @team_game.goldspent, herald: @team_game.herald, kills: @team_game.kills, minions: @team_game.minions, monstersenemyjg: @team_game.monstersenemyjg, monstersownjg: @team_game.monstersownjg, oppcs10: @team_game.oppcs10, oppgold10: @team_game.oppgold10, oppgold15: @team_game.oppgold15, oppxp10: @team_game.oppxp10, pick1_id: @team_game.pick1_id, pick2_id: @team_game.pick2_id, pick3_id: @team_game.pick3_id, pick4_id: @team_game.pick4_id, pick5_id: @team_game.pick5_id, result: @team_game.result, side: @team_game.side, team_id: @team_game.team_id, towers: @team_game.towers, viswardbuys: @team_game.viswardbuys, viswards: @team_game.viswards, wardskilled: @team_game.wardskilled, wardsplaced: @team_game.wardsplaced, xp10: @team_game.xp10 } }
    assert_redirected_to team_game_url(@team_game)
  end

  test "should destroy team_game" do
    assert_difference('TeamGame.count', -1) do
      delete team_game_url(@team_game)
    end

    assert_redirected_to team_games_url
  end
end
