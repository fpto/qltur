class AddSlugToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :slug, :string
    add_index :concerts, :slug, unique: true
  end
end
