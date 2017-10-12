class CreatePlantSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :plant_sectors do |t|

      t.timestamps
      t.integer :elapsed_time, :default => 0
      t.integer :moisture, :default => 10
      t.integer :magnesium, :default => 500
      t.integer :potassium, :default => 500
      t.integer :iron, :default => 500

      t.belongs_to :plant, index: true
      t.belongs_to :greenhouse, index: true
    end
  end
end
