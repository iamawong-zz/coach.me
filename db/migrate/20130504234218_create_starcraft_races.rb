class CreateStarcraftRaces < ActiveRecord::Migration
  def change
    create_table :starcraft_races do |t|
      t.string :race, :null => false

      t.timestamps
    end

    add_index :starcraft_races, :race, :unique => true
  end
end
