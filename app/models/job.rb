class Job < ApplicationRecord
    belongs_to :poster
    has_many :contracts 
    has_many :freelancers, through: :contracts

    validates :job_title, :job_type, :description, :remote_job, :compensation, presence: true
end