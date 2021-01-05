class Poster < ApplicationRecord
    has_many :reviews
    has_many :freelancers, through: :reviews
    has_many :jobs

    validates :first_name, :last_name, :age, :email, :address, :username, :password_digest, presence: true
end