class CreateExpeditions < ActiveRecord::Migration
  def change
    create_table :expeditions do |t|
    	t.integer :boat_id
    	t.integer :user_id
    	t.text :captains_log
    	t.integer :worth
      t.integer :origin
      t.integer :destination

      t.timestamps null: false
    end
  end
end
