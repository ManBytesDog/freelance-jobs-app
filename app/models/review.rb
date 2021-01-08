class Review < ApplicationRecord
    belongs_to :poster
    belongs_to :freelancer

    validates :poster_id, :freelancer_id, :review, :rating, presence: true

end