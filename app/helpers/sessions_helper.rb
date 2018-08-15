module SessionsHelper

	def login(user,admin)
	 session[:user_id] = user.id
	 session[:admin_id] = admin.id
	end
    
    def current_user
     @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def current_admin
     @current_admin ||= Admin.find_by(id: session[:admin_id])
    end
         
    def signed_in?
    	!current_user.nil?
    	!current_admin.nil?
    end
end
