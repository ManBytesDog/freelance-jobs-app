class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :poster_id
      t.string :job_title
      t.string :job_type
      t.string :description
      t.boolean :remote_job 
      t.integer :compensation
      t.datetime :deadline_date
    end
  end
end
