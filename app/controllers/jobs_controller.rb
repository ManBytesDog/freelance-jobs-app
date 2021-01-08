class JobsController < ApplicationController
    #<a href='https://pngtree.com/free-backgrounds'>free background photos from pngtree.com</a>
    #<a href='https://pngtree.com/free-backgrounds'>free background photos from pngtree.com</a>
    #<a href='https://pngtree.com/free-backgrounds'>free background photos from pngtree.com</a>
    before_action :not_logged_in, only: [:new,:edit]
    
    def index
        @jobs = Job.all
    end

    def show
        @job = Job.find(params[:id])
    end

    def new
        @job = Job.new
    end

    def create
        @job = Job.new(job_params(:job_title, :job_type, :description, :remote_job, :compensation, :poster_id))
        if @job.valid?
            @job.save
            redirect_to job_path(@job)
        else
            flash[:errors] = @job.errors.full_messages
            redirect_to new_job_path
        end

    end

    def edit
        @job = Job.find_by(id: params[:id])
    end

    def update
        @job = Job.find_by(id: params[:id])
        @job.update(job_params(:job_title, :job_type, :description, :remote_job, :compensation, :poster_id))
        if @job.valid?
            @job.save
            redirect_to job_path(@job)
        else
            flash[:errors] = @job.errors.full_messages
            redirect_to edit_job_path
        end
    end

    def destroy
        @job = Job.find_by(id: params[:id])
        poster = @job.poster
        @job.destroy
        redirect_to poster_path(poster)
    end

    private

    def job_params(*args)
        params.require(:job).permit(*args)
    end



end