class Contract < ApplicationRecord
    belongs_to :freelancer 
    belongs_to :job 

    validates :bid_price, presence: true
end