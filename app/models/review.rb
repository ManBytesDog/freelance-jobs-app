class Review < ApplicationRecord
    belongs_to :poster
    belongs_to :freelancer
end