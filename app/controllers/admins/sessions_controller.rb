   class Admins::SessionsController < ApplicationController::SessionsController
   
   def new
   end
   
   def login(admin)
    session[:admin_id] = admin.id
   end
   
    def current_admin
     @current_admin ||= Admin.find_by(id: session[:admin_id])
    end

   def signed_in?
    !current_admin.nil?
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