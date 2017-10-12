class CreateSoilHumiditySensors < ActiveRecord::Migration[5.1]
  def change
    create_table :soil_humidity_sensors do |t|

      t.timestamps
      t.belongs_to :xtreme_farm_bot, index: true
    end
  end
end
