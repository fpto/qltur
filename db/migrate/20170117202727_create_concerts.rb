class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.text :title
      t.text :time
      t.text :date
      t.text :venue
      t.text :band
      t.text :description	
      t.timestamps null: false
    end
  end
end
