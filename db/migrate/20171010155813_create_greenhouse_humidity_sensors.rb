class CreateGreenhouseHumiditySensors < ActiveRecord::Migration[5.1]
  def change
    create_table :greenhouse_humidity_sensors do |t|

      t.timestamps
      t.belongs_to :xtreme_farm_bot, index: true
    end
  end
end
