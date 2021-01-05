class PostersController < ApplicationController

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
        @poster = Poster.new(poster_params(:first_name, :last_name, :age, :email, :address, :username, :password_digest))
        if @poster.valid?
            @poster.save
            session[:id] = @poster.id
            redirect_to welcome_page_path
        else
            flash[:errors] = @poster.errors.full_messages
            redirect_to new_poster_path
        end
    
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def poster_params(*args)
        params.require(:poster).permit(*args)
    end
end