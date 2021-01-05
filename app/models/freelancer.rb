class Freelancer < ApplicationRecord
    has_many :reviews 
    has_many :posters, through: :reviews

    has_many :contracts
    has_many :jobs, through: :contracts

end