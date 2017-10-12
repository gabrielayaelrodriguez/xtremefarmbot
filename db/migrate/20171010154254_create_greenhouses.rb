class CreateGreenhouses < ActiveRecord::Migration[5.1]
  def change
    create_table :greenhouses do |t|
      t.integer :turn_on_light_time, default: 7
      t.integer :turn_off_light_time, default: 20
      
      t.timestamps
      t.belongs_to :xtreme_farm_bot, index: true
    end
  end
end
