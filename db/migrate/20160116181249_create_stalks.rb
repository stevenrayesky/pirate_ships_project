class CreateStalks < ActiveRecord::Migration
  def change
    create_table :stalks do |t|
      t.integer :boat_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
