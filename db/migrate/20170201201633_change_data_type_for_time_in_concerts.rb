class ChangeDataTypeForTimeInConcerts < ActiveRecord::Migration
  def change
  	  	change_column :concerts, :time,  'time using time::time'
  end
end
