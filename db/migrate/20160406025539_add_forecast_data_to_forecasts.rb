class AddForecastDataToForecasts < ActiveRecord::Migration
  def change
    add_column :forecasts, :temp, :string
    add_column :forecasts, :precip, :string
  end
end
