class ChangeVenueIdTypeBack < ActiveRecord::Migration
  def change
  	  	 change_column :concerts, :venue_id, :integer
  end
end
