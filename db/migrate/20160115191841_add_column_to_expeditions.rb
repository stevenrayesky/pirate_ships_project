class AddColumnToExpeditions < ActiveRecord::Migration
  def change
  	add_column :expeditions, :origin, :string
  	add_column :expeditions, :destination, :string
  	add_column :expeditions, :name, :string
  end
end
