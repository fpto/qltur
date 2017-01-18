class AddImageUrlToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :image_url, :text
  end
end
