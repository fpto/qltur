class UsersController < ApplicationController
  before_action :require_user, only: [:index, :show]
  before_action :require_admin, only: [:index, :show]
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
    @concerts = @user.concerts
  end
  def new
    @user = User.new
  end
  def create
  @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/signup'
    end
  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
