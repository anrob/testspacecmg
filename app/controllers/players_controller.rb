class PlayersController < ApplicationController
   
   before_action :set_player, only: [:show, :edit, :update]
   
  def index
    @players = Player.teamplayer(current_user)
  end 
  
  
  def show
    @player = Player.find(params[:id])
    # @managements = Management.find(params[:id])
  end
  
  def new
    @player = Player.new
  end
  
  def edit
  end
  
  def create
    @player = Player.new(player_params)
    @player.management_id = current_user.management_id

    respond_to do |format|
      if @player.save
        format.html { redirect_to players_path, notice: 'Actcode was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to players_path, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:first_name, :management_id, :position_type, :home_phone, :work_phone, :email, :regular_rate)
    end
   
end
