class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.integer :job_id
      t.integer :freelancer_id
      t.integer :bid_price
    end
  end
end
