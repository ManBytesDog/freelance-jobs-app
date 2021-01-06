class SessionsController < ApplicationController
    def new_poster
        @poster = Poster.new
    end
    
    def new_freelancer
        @freelancer = Freelancer.new
    end

    def create_freelancer
        session[:]
    end

    def create_poster
        session[:]
    end

    def destroy
        session.clear 
        redirect_to home_page_path 
    end


    
end
