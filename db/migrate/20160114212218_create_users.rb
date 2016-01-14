class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :lname
      t.string :password_digest
      t.text :bio
      t.string :adjective

      t.timestamps null: false
    end
  end
end
