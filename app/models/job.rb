class Job < ApplicationRecord
    belongs_to :poster
    has_many :contracts 
    has_many :freelancers, through: :contracts
end