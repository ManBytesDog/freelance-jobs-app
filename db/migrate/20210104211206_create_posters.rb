class CreatePosters < ActiveRecord::Migration[6.0]
  def change
    create_table :posters do |t|
      t.string  :first_name
      t.string  :last_name
      t.integer :age
      t.string  :email
      t.string  :username
      t.string  :password_digest  
      t.string  :address

    end
  end
end
