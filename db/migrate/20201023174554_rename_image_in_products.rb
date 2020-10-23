class RenameImageInProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :image, :image_url
  end
end
