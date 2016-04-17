class ForecastOverhaul < ActiveRecord::Migration
  def change
    change_table :forecasts do |t|
      t.remove :zip, :lat, :lng, :temp, :precip
      t.string :summary, :icon, :precip_type
      t.decimal :precip_intensity, :precip_probability, :temperature, :apparent_temperature, :dew_point, humidity: 0.94, wind_speed: 2.33, wind_bearing: 238, cloud_cover: 0.73, pressure: 1023.48, ozone: 341.9
      t.integer :visibility
      t.references :city
    end
  end
end
