class ChangeNameOfTypeToTypeOfOnAttractions < ActiveRecord::Migration
  def change
    rename_column :attractions, :type, :type_of
  end
end
