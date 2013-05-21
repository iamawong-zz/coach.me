class Starcraft2Coach < ActiveRecord::Migration
  def change
    change_table :starcraft2_coaches do |t|
      t.foreign_key :users
      t.foreign_key :starcraft2_races
    end
  end
end
