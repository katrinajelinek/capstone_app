class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :plant_type
      t.string :trade_for
      t.text :description
      t.string :location
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
