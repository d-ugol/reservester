class AddLatitudeToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :latitude, :float
  end
end
