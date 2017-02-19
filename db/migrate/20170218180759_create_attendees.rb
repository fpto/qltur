class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.belongs_to :user, index: true
      t.belongs_to :concert, index: true
      t.integer :response
      t.timestamps null: false
    end
  end
end
