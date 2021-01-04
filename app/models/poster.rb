class Poster < ApplicationRecord
    has_many :reviews
    has_many :freelancers, through: :reviews
    has_many :jobs
end