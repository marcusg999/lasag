class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :client
      t.integer :artist

      t.timestamps null: false
    end
  end
end
