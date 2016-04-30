class AddUserRefToAttractions < ActiveRecord::Migration
  def change
    add_reference :attractions, :user, index: true, foreign_key: true
  end
end
