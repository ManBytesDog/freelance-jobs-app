class Poster < ApplicationRecord

    has_secure_password
    
    has_many :reviews
    has_many :freelancers, through: :reviews
    has_many :jobs

    
    # if current_page?(edit_poster_path(session[:id]))
    #     validates :email, :address, :username, :password, presence: true
    #     validates :email, :username, uniqueness: true
    #     validates :password, length: { minimum: 6}
    # else
        validates :first_name, :last_name, :age, :email, :address, :username, :password, presence: true
        validates :email, :username, uniqueness: true
        validates :age, numericality: {greater_than_or_equal_to: 18, message: 'must be 18 or older.'}
        validates :password, length: { minimum: 6}
        validates :first_name, length: { minimum: 2 }
        validates :last_name, length: { minimum: 2 }
    #  end

end