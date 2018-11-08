class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image_url
      t.integer :store_id

      t.timestamps
    end
  end
end
