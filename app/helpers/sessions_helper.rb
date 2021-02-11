module SessionsHelper
    def current_user
        User.find_by(id: session[:user_id])
      end

      def log_in(user)
        session[:user_id] = user.id
      end
    
end

#def user_connected
#if current_user? = nil
#return true
#end
