class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :store_type
      t.string :password

      t.timestamps
    end
  end
end
