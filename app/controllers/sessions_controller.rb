class SessionsController < ApplicationController
    def new_poster
        @poster = Poster.new
    end
    
    def new_freelancer
        @freelancer = Freelancer.new
    end

    def create_freelancer
        @freelancer = Freelancer.find_by(email: params[:freelancer][:email])
        if @freelancer && @freelancer.authenticate(params[:freelancer][:password])
            session[:id] = @freelancer.id
            redirect_to freelancer_path(@freelancer)
        else
            flash[:errors] = ["Invalid Email or Password"]
            redirect_to login_freelancer_path
        end

    end

    def create_poster
        @poster = Poster.find_by(email: params[:poster][:email])
        if @poster && @poster.authenticate(params[:poster][:password])
            session[:id] = @poster.id
            redirect_to poster_path(@poster)
        else
            flash[:errors] = ["Invalid Email or Password"]
            redirect_to login_poster_path
        end
    end

    def destroy
        session.clear 
        redirect_to home_page_path 
    end



    
end
