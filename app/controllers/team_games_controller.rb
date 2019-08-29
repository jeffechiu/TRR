class TeamGamesController < ApplicationController
  before_action :set_team_game, only: [:show, :edit, :update, :destroy]

  # GET /team_games
  # GET /team_games.json
  def index
    @team_games = TeamGame.all
  end

  # GET /team_games/1
  # GET /team_games/1.json
  def show
  end

  # GET /team_games/new
  def new
    @team_game = TeamGame.new
  end

  # GET /team_games/1/edit
  def edit
  end

  # POST /team_games
  # POST /team_games.json
  def create
    @team_game = TeamGame.new(team_game_params)

    respond_to do |format|
      if @team_game.save
        format.html { redirect_to @team_game, notice: 'Team game was successfully created.' }
        format.json { render :show, status: :created, location: @team_game }
      else
        format.html { render :new }
        format.json { render json: @team_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_games/1
  # PATCH/PUT /team_games/1.json
  def update
    respond_to do |format|
      if @team_game.update(team_game_params)
        format.html { redirect_to @team_game, notice: 'Team game was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_game }
      else
        format.html { render :edit }
        format.json { render json: @team_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_games/1
  # DELETE /team_games/1.json
  def destroy
    @team_game.destroy
    respond_to do |format|
      format.html { redirect_to team_games_url, notice: 'Team game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_game
      @team_game = TeamGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_game_params
      params.require(:team_game).permit(:team_id, :game_id, :kills, :deaths, :assists, :fbkill, :fbdeath, :fbassist, :drakes, :herald, :barons, :elders, :dmg, :gold, :goldspent, :wardsplaced, :wardskilled, :viswards, :viswardbuys, :cs10, :oppcs10, :gold10, :oppgold10, :gold15, :oppgold15, :xp10, :oppxp10, :side, :pick1_id, :pick2_id, :pick3_id, :pick4_id, :pick5_id, :ban1_id, :ban2_id, :ban3_id, :ban4_id, :ban5_id, :result, :towers, :firsttower, :fttime, :firstmid, :first3towers, :minions, :monstersownjg, :monstersenemyjg)
    end
end
