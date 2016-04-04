class AddZipIndex < ActiveRecord::Migration
  def change
    add_index :forecasts, :zip
  end
end
