class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :image_url
      t.integer :category_id
      t.integer :transaktion_id

      t.timestamps
    end
  end
end
