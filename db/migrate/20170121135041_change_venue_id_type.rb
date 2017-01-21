class ChangeVenueIdType < ActiveRecord::Migration
  def change
  	 change_column :concerts, :venue_id, :string
  end
end
