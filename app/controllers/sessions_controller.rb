class SessionsController < ApplicationController
  def new
    @meta_title = meta_title 'Log in'
  end
  def create
	  @user = User.find_by_email(params[:session][:email])
	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    redirect_to '/'
	  else
	    redirect_to '/login'
	  end
  end
  def welcome
  end
  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
