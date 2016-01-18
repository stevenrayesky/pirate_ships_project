class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :container
      t.string :location
      t.integer :cargo
      t.boolean :captured

      t.timestamps null: false
    end
  end
end
