class ChangeLocationsCountryColumnToString < ActiveRecord::Migration
  def change
    change_column :locations, :country, :string
  end
end
