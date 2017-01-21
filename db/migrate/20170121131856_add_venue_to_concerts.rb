class AddVenueToConcerts < ActiveRecord::Migration
  def change
    add_reference :concerts, :venue, index: true, foreign_key: true
  end
end
