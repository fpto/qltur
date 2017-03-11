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
  def myconcerts
    @user = current_user
    @concerts = @user.concerts
    future_range = ((DateTime.now-1.days)..(DateTime.now + 365.days))
    @futureConcerts = (@concerts.select{|concert| future_range.cover?(concert.date)}).sort! { |a,b| a.date <=> b.date }
    last_year_range = ((DateTime.now - 365.days)..DateTime.now)
    @lastYearConcerts = (@concerts.select{|concert| last_year_range.cover?(concert.date)}).sort! { |a,b| a.date <=> b.date }
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
