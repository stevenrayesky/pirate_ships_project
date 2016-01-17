class AddColumnBoatsModel < ActiveRecord::Migration
  def change
  	add_column :boats, :cargo, :integer
  end
end
