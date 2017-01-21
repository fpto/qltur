class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :website
      t.text :facebook
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postal_code
      t.string :state
      t.string :country
      t.text :cover_image
      t.text :description
      t.timestamps null: false
    end
  end
end
