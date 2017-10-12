class CreateXtremeFarmBots < ActiveRecord::Migration[5.1]
  def change
    create_table :xtreme_farm_bots do |t|

      t.timestamps
    end
  end
end
