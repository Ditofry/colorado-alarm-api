class AddLatLngToForecasts < ActiveRecord::Migration
  def change
    add_column :forecasts, :lat, :float
    add_column :forecasts, :lng, :float
  end
end
