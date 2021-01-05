class JobsController < ApplicationController


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
        @job = Job.new(job_params)
        if @job.valid?
            @job.save

        else
            flash[:errors] = @job.errors.full_messages
            redirect_to new_job_path
        end

    end

    private

    def job_params
        params.require(:job).permit(:job_title, :job_type, :description, :remote_job, :compensation)
    end



end