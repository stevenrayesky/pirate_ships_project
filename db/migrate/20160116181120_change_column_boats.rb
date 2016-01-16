class ChangeColumnBoats < ActiveRecord::Migration
  def change
  	remove_column :boats, :cargo
  	add_column :boats, :cargo, :integer
  end
end
