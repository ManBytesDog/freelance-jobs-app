class FreelancersController < ApplicationController
    def index 
        @freelancers = Freelancer.all 
    end

    def show 
        @freelancer = Freelancer.find(params[:id])
    end

    def new
        @freelancer = freelancer.new
    end

    def create 
        @freelancer = Freelancer.new(freelancer_params(:first_name, :last_name, :age, :email, :certifications, :bio, :username, :password_digest))
        @freelancer.save
        redirect_to welcome_page_path
    end

    def edit 
        
    end

    def update 

    end

    def destroy

    end


    private 
    def freelancer_params(*args) 
        params.require(:freelancer).permit(*args)
    end


end