class Poster < ApplicationRecord

    has_secure_password

    has_many :reviews
    has_many :freelancers, through: :reviews
    has_many :jobs

    validates :first_name, :last_name, :age, :email, :address, :username, :password, presence: true
    validates :email, :username, uniqueness: true
    validates :age, numericality: {greater_than_or_equal_to: 18, message: 'must be 18 or older.'}
    validates :password, length: { minimum: 6}

   
end