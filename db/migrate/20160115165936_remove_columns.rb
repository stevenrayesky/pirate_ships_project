class RemoveColumns < ActiveRecord::Migration
  def change
  	remove_column :boats, :cargo
  	remove_column :boats, :location
  end
end
