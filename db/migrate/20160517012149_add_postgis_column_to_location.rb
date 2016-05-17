class AddPostgisColumnToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :coordinates, :st_point, geographic: true
  end
end
