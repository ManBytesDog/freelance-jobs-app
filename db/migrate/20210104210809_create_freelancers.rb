class CreateFreelancers < ActiveRecord::Migration[6.0]
  def change
    create_table :freelancers do |t|
      t.string :first_name
      t.string :last_name 
      t.integer :age 
      t.string :email 
      t.string :certifications 
      t.string :bio
      t.string :username
      t.string :password_digest
    end
  end
end
