class ChangesOffersAcceptedDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :accepted, :boolean, default: false
  end
end
