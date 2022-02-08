class CreateFreelancers < ActiveRecord::Migration[6.0]
  def change
    create_table :freelancers do |t|
      t.text :first_name
      t.text :last_name 
      t.integer :age 
      t.text :email 
      t.text :certifications 
      t.text :bio
      t.text :username
      t.text :password_digest
    end
  end
end
