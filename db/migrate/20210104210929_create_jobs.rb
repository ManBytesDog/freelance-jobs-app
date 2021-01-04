class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :poster_id
      t.string :type
      t.string :description
    end
  end
end
