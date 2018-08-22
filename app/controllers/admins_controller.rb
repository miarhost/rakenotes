class AdminsController < ApplicationController

	#before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def new
  	@admin = Admin.new
  end

  def index
  	@admins = Admin.all
  end
  
  def show
    @admin = Admin.find(params[:id])
  end
  
  def edit

  end

  def create 
  	@admin = Admin.new(admin_params)
   	respond_to do |format|
  	 if	@admin.save
      admin_log_in @admin
  	  format.html { redirect_to @admin , notice: "New admin signed up" }
  	  format.json { render :show, status: :created, location: @admin }
  	 else
  	  format.html { render :new }
  	  format.json {render json: @admin.errors, status: :unprocessable_entity }
  	 end
  	end
  end

 def update 
  respond_to do |format| 
  	if @admin.update(admin_params)
     format.html { redirect_to @admin, notice: "Admin's profile is successfully updated"}
     format.json { render :show, status: :ok, location: @admin }
    else
     format.html { render :edit }
     format.json { render json: @admin.errors, status: :unprocessable_entity }
    end
  end
 end

def destroy 
 @admin.destroy
  respond_to do |format| 
  	format.html { redirect_to admins_url, notice: "Admin's profile is deleted!"}
    format.json { head :no_content }
   end
end

 private

#def set_admin
# @admin = Admin.find(params[:id])
#end

def admin_params
 params.require(:admin).permit(:name, :email, :password, :password_comfirmation)
end

end
