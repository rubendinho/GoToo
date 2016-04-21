class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :hometown
      t.integer :citizenship
      t.integer :gender
      t.integer :age

      t.timestamps null: false
    end
  end
end
