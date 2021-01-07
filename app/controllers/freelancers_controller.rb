class FreelancersController < ApplicationController
    
    before_action :not_logged_in, only:[:show]
    
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
            redirect_to welcome_page_path
        else 
            flash[:errors] = @freelancer.errors.full_messages
            redirect_to new_freelancer_path
        end
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