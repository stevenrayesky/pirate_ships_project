class AddColumns < ActiveRecord::Migration
  def change
  	add_column :boats, :location, :string
  	add_column :boats, :cargo, :string
  end
end
