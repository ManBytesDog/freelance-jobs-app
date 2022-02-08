class CreatePosters < ActiveRecord::Migration[6.0]
  def change
    create_table :posters do |t|
      t.text  :first_name
      t.text  :last_name
      t.integer :age
      t.text  :email
      t.text  :username
      t.text  :password_digest  
      t.text  :address
    end
  end
end
