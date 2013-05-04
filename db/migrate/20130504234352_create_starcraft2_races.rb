class CreateStarcraft2Races < ActiveRecord::Migration
  def change
    create_table :starcraft2_races do |t|
      t.string :race, :null => false

      t.timestamps
    end
    add_index :starcraft2_races, :race, :unique => true
  end
end
