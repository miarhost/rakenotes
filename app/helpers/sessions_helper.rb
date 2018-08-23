module SessionsHelper

	def log_in(user)
	 session[:user_id] = user.id
	end
    
   def current_user
      if (user_id = session[:user_id])
       @current_user ||= User.find_by(id: session[:user_id])
      elsif (user_id = cookies.signed[:user_id])
       user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
       log_in user
       @current_user = user
      end
     end
    end

    def logged_in?
    	!current_user.nil?
    end

    def forget(user)
     user.forget
     cookies.delete(:user_id)
     cookies.delete(:remember_token)
    end

    def logout
      forget(current_user)
      session.delete(:user_id)
      @current_user = nil
    end

   def admin_log_in(admin)
    session[:admin_id] = admin.id
   end

    def current_admin
     if session[:admin_id]
     @current_admin ||= Admin.find_by(id: session[:admin_id])

    end

   def admin_in?
    !current_admin.nil?
   end

    def admin_logout
      session.delete(:admin_id)
      @current_admin = nil
    end
 

end
