require 'test_helper'

class PlayerGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_game = player_games(:one)
  end

  test "should get index" do
    get player_games_url
    assert_response :success
  end

  test "should get new" do
    get new_player_game_url
    assert_response :success
  end

  test "should create player_game" do
    assert_difference('PlayerGame.count') do
      post player_games_url, params: { player_game: { assists: @player_game.assists, barons: @player_game.barons, champion_id: @player_game.champion_id, cs10: @player_game.cs10, deaths: @player_game.deaths, dmg: @player_game.dmg, doubles: @player_game.doubles, drakes: @player_game.drakes, fbassist: @player_game.fbassist, fbdeath: @player_game.fbdeath, fbkill: @player_game.fbkill, game_id: @player_game.game_id, gold: @player_game.gold, gold10: @player_game.gold10, gold15: @player_game.gold15, goldspent: @player_game.goldspent, herald: @player_game.herald, kills: @player_game.kills, oppcs10: @player_game.oppcs10, oppgold10: @player_game.oppgold10, oppgold15: @player_game.oppgold15, oppxp10: @player_game.oppxp10, pentas: @player_game.pentas, player_id: @player_game.player_id, quadras: @player_game.quadras, triples: @player_game.triples, viswardbuys: @player_game.viswardbuys, viswards: @player_game.viswards, wardskilled: @player_game.wardskilled, wardsplaced: @player_game.wardsplaced, xp10: @player_game.xp10 } }
    end

    assert_redirected_to player_game_url(PlayerGame.last)
  end

  test "should show player_game" do
    get player_game_url(@player_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_game_url(@player_game)
    assert_response :success
  end

  test "should update player_game" do
    patch player_game_url(@player_game), params: { player_game: { assists: @player_game.assists, barons: @player_game.barons, champion_id: @player_game.champion_id, cs10: @player_game.cs10, deaths: @player_game.deaths, dmg: @player_game.dmg, doubles: @player_game.doubles, drakes: @player_game.drakes, fbassist: @player_game.fbassist, fbdeath: @player_game.fbdeath, fbkill: @player_game.fbkill, game_id: @player_game.game_id, gold: @player_game.gold, gold10: @player_game.gold10, gold15: @player_game.gold15, goldspent: @player_game.goldspent, herald: @player_game.herald, kills: @player_game.kills, oppcs10: @player_game.oppcs10, oppgold10: @player_game.oppgold10, oppgold15: @player_game.oppgold15, oppxp10: @player_game.oppxp10, pentas: @player_game.pentas, player_id: @player_game.player_id, quadras: @player_game.quadras, triples: @player_game.triples, viswardbuys: @player_game.viswardbuys, viswards: @player_game.viswards, wardskilled: @player_game.wardskilled, wardsplaced: @player_game.wardsplaced, xp10: @player_game.xp10 } }
    assert_redirected_to player_game_url(@player_game)
  end

  test "should destroy player_game" do
    assert_difference('PlayerGame.count', -1) do
      delete player_game_url(@player_game)
    end

    assert_redirected_to player_games_url
  end
end
