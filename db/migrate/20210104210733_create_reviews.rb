class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :poster_id
      t.integer :freelancer_id
      t.text  :review
      t.float   :rating
      t.datetime :date
    end
  end
end
