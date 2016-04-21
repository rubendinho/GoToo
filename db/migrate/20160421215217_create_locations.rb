class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city_name
      t.string :state_province
      t.integer :country
      t.text :description

      t.timestamps null: false
    end
  end
end
