class UsersController < ApplicationController
  #layout 'sidenav'
  
  
  def index
    if params[:approved] == "false"
      @users = User.where(approved: false)
    else
      @users = User.where(approved: true)
    end
  end 
  
  
  def show
    @user = User.find(params[:id])
    # @managements = Management.find(params[:id])
  end
  
  def new
    @user = User.new
  end
end