class AddsDefaultToOffersAccepted < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :accepted, :boolean, default: true
  end
end
