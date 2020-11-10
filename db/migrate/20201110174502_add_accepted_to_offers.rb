class AddAcceptedToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :accepted, :boolean
  end
end
