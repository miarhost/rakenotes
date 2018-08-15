class SessionsController < ApplicationController

  def new
  end

  def create
  	user = User.find_by(id: session[:user_id])
    admin = Admin.find_by(id: session[:admin_id])
  	if user && user.authenticate(params[:session][:password])
    login user
  	redirect_to user
  	else
    flash.now[:danger] = "Invalid password or/and email"
    render 'new'
    end

    if admin && admin.authenticate(params[:session][:password]) 
    login admin
    redirect_to admin
    else
    flash.now[:danger] = "Invalid password or/and email"
    render 'new'
    end 
  end

end
