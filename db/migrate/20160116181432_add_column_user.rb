class AddColumnUser < ActiveRecord::Migration
  def change
  	add_column :users, :total_worth, :integer
  end
end
