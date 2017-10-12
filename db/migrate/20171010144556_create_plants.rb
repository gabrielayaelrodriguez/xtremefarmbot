class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name, unique: true
      t.integer :soil_moisture
      t.integer :magnesium
      t.integer :potassium
      t.integer :iron
      t.integer :temperature
      t.integer :humidity
      t.integer :hours_of_light
      t.integer :growth_time



      t.timestamps

    end
  end
end
