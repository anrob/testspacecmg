class PlayersController < ApplicationController
   
   before_action :set_player, only: [:show, :edit, :update]
   
  def index
    @players = Player.all
    # if params[:approved] == "false"
    #   @players = Player.where(status: false)
    # else
    #   @players = Player.where(status: true)
    # end
  end 
  
  
  def show
    @player = Player.find(params[:id])
    # @managements = Management.find(params[:id])
  end
  
  def new
    @player = Player.new
  end
  
  
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @job = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    
   
end
