class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.references :user, index: true, foreign_key: true
      t.string :provider
      t.string :accesstoken
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :image
      t.string :phone
      t.string :urls

      t.timestamps null: false
    end
  end
end
