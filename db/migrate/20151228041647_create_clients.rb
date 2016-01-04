class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

      t.string :name
      t.text :location
      t.text :city
      t.string :wallspace


      t.timestamps null: false
    end
  end
end
