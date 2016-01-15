class RemoveColumnFromExpeditions < ActiveRecord::Migration
  def change
  	remove_column :expeditions, :destination
  	remove_column :expeditions, :origin
  end
end
