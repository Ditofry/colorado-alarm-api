class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.integer :zip
      t.date :time

      t.timestamps null: false
    end
  end
end
