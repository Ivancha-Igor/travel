class AddLatitudeAndLongitudeToPlacement < ActiveRecord::Migration
  def change
    add_column :placements, :latitude, :float
    add_column :placements, :longitude, :float
  end
end
