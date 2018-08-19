class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by(id: session[:user_id])
    
  	if user && user.authenticate(params[:session][:password])
    log_in user
  	redirect_to user
  	else
    flash.now[:danger] = "Invalid password or/and email"
    render 'new'
  end
 end
end