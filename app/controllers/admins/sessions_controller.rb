   class Admins::SessionsController < ApplicationController::SessionsController
   def new
   end

   def create
   	admin = Admin.find_by(id: session[:admin_id])
    if admin && admin.authenticate(params[:session][:password]) 
    login admin
    redirect_to admin
    else
    flash.now[:danger] = "Invalid password or/and email"
    render 'new'
    end 
   end

  end