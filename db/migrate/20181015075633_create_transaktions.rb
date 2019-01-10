class CreateTransaktions < ActiveRecord::Migration[5.2]
  def change
    create_table :transaktions do |t|
      t.integer :total
      t.integer :store_id

      t.timestamps
    end
  end
end
