class Managements::TeamsController < ApplicationController
  layout 'management'
    before_action :authenticate_management!
  before_action :set_team, only: [:show, :edit, :update]
  # GET /teams/new
  def index
  @teams = Team.all.order('created_at DESC')

 end
  def new
    @team = current_management.teams.build
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  # POST /teams.json
  def create
    @team = current_management.teams.build(team_params)

    respond_to do |format|
      if @team.save
        format.html { redirect_to teams_url, notice: 'team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teams/1
  # PATCH/PUT /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to management_teams_path, notice: 'team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :github, :medium, :skill_1, :skill_2, :skill_others, :avatar, :twitter, :cv, :management_id, :bio, :position, :steamit )
    end

end
