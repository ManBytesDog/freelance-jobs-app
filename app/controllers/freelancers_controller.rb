class FreelancersController < ApplicationController
    
    before_action :not_logged_in, only:[:show,:edit]
    
    def index 
        @freelancers = Freelancer.all 
    end

    def show 
        @freelancer = Freelancer.find(params[:id])
    end

    def new
        @freelancer = Freelancer.new
    end

    def create 
        @freelancer = Freelancer.new(freelancer_params(:first_name, :last_name, :age, :email, :certifications, :bio, :username, :password, :password_confirmation))
        if @freelancer.valid?
            @freelancer.save
            session[:id] = @freelancer.id 
            session[:identify] = "Freelancer"
            redirect_to freelancer_path(@freelancer)
        else 
            flash[:errors] = @freelancer.errors.full_messages
            redirect_to new_freelancer_path
        end
    end

    def edit 
        @freelancer = Freelancer.find(params[:id])       
    end

    def update 
        @freelancer = Freelancer.find(params[:id])
        @freelancer.update(freelancer_params(:certifications, :bio, :password, :password_confirmation))
        if @freelancer.valid?
            @freelancer.save
            session[:id] = @freelancer.id 
            session[:identify] = "Freelancer"
            redirect_to freelancer_path(@freelancer)
        else 
            flash[:errors] = @freelancer.errors.full_messages
            redirect_to edit_freelancer_path
        end
    end

    def destroy
        @freelancer = Freelancer.find(params[:id])
        @freelancer.destroy 
        session.clear 
        redirect_to home_page_path 
    end


    private 
    def freelancer_params(*args) 
        params.require(:freelancer).permit(*args)
    end


end