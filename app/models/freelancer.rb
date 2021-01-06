class Freelancer < ApplicationRecord
    
    has_secure_password 

    has_many :reviews 
    has_many :posters, through: :reviews

    has_many :contracts
    has_many :jobs, through: :contracts

    validates :first_name, :last_name, :age, :email, :certifications, :bio, :username, :password, presence: true
    validates :email, :username, uniqueness: true
    validates :age, numericality: { greater_than_or_equal_to: 18, message: "Must be 18 or older" }
    validates :first_name, length: { minimum: 2 }
    validates :last_name, length: { minimum: 2 }
    validates :password, length: { minimum: 6} 
    validates :bio, length: { in: 15..500 }

    #used in views to call on first and last name of freelancer
    def full_name
        first_name + " " + last_name 
    end

end