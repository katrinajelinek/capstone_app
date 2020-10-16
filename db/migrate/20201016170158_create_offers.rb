class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.integer :post_id
      t.integer :user_id
      t.text :message
      t.string :image_url

      t.timestamps
    end
  end
end
