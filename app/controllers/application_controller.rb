class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.

    # For APIs, you may want to use :null_session instead.

    protect_from_forgery with: :exception    
    helper_method :current_user, :logged_in?

    def current_user
        #if doesnt exist then find, else just get the current user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
      #just check if there is a current_user
      !!current_user
    end
    
    def require_user
      if !logged_in?
        flash[:danger] = "You must be logged in to perform that action!"
        redirect_to root_path
      end
    end

    
end
