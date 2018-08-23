   class Admins::SessionsController < ApplicationController::SessionsController
   
   def new
    super
   end
     

   def create
   	admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password]) 
    admin_log_in admin
    redirect_to admin
    else
    flash.now[:danger] = "Invalid password or/and email"
    render 'new'
    end 
   end

   def destroy 
    admin_logout if admin_in?
    redirect_to root_url
   end

  end