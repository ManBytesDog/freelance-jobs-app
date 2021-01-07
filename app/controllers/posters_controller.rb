class PostersController < ApplicationController
    
    before_action :not_logged_in, only:[:show,:edit]

    def index
        @posters = Poster.all
    end

    def show
        @poster = Poster.find(params[:id])
    end

    def new
        @poster = Poster.new
    end

    def create
        @poster = Poster.new(poster_params(:first_name, :last_name, :age, :email, :address, :username, :password, :password_confirmation))
        if @poster.valid?
            @poster.save
            session[:id] = @poster.id
            session[:identify] = "Poster"
            redirect_to welcome_page_path
        else
            flash[:errors] = @poster.errors.full_messages
            redirect_to new_poster_path
        end
    
    end

    def edit
        @poster = Poster.find_by(id: session[:id])
    end

    def update
        @poster = Poster.find_by(id: session[:id])
        @poster.update(poster_params(:email, :username, :password, :password_confirmation, :address))
        if @poster.valid?
            @poster.save
            redirect_to poster_path(@poster)
        else
            flash[:errors] = @poster.errors.full_messages
            redirect_to edit_poster_path(@poster)
        end
    end

    def destroy
        @poster = Poster.find_by(id: session[:id])
        @poster.destroy
        session.clear
        redirect_to home_page_path
    end

    private

    def poster_params(*args)
        params.require(:poster).permit(*args)
    end
end