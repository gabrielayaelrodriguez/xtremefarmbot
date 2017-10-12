class CreateActionEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :action_entries do |t|
      t.string :description

      t.timestamps
    end
  end
end
