class ChangeDateFormatInConcerts < ActiveRecord::Migration
  def change
  	change_column :concerts, :date,  'date using date::date'
  end
end
