class ApplicationController < ActionController::Base

    def home
        
    end

    def about

    end

    def welcome

    end

    def sign_in

    end

	
    def current_user
    user = Poster.find_by(id: session[:id])
       
    end
        
    def logged_in?
        # current_user
    !!current_user
    end
        
    def not_logged_in
        # redirect_to login_path unless logged_in
    redirect_to login_path unless logged_in?
    end

    

end
