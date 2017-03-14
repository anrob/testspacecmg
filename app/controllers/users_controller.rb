class UsersController < ApplicationController
  #layout 'sidenav'

def index
  @users = current_user

end
  def index
    redirect_to root_path
    if params[:approved] == "false"
      @users = User.where(approved: false)
    else
      @users = User.where(approved: true)
    end
  end
  #
  #
  # def show
  #   redirect_to root_path
  #   #@user = User.find(params[:id])
  #   # @managements = Management.find(params[:id])
  # end
  #
  # def new
  #   redirect_to root_path
  #   @user = User.new
  # end
end
