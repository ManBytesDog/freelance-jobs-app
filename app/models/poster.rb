class Poster < ApplicationRecord
    has_many :reviews
    has_many :freelancers, through: :reviews
    has_many :jobs

    validates :first_name, :last_name, :age, :email, :address, :username, :password_digest, presence: true
    validates :email, :username, uniqueness: true
    validates :age, numericality: {greater_than_or_equal_to: 18, message: 'Must be 18 or older.'}
    validates :password_digest, length: { minimum: 6 , message: 'Password is too short'}

   
end