class RemoveVenueFromConcerts < ActiveRecord::Migration
  def change
    remove_column :concerts, :venue, :text
  end
end
