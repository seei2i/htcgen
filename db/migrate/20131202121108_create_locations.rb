class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :weblink
      t.string :name
      t.string :address
      t.references :city
      t.references :state
      t.string :zip
      t.string :hours
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :locations, :city_id
    add_index :locations, :state_id
  end
end
