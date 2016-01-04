class CreateProfileTypes < ActiveRecord::Migration
  def change
    create_table :profile_types do |t|
      t.string :artist
      t.string :client

      t.timestamps null: false
    end
  end
end
