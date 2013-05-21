class CreateStarcraft2Coaches < ActiveRecord::Migration
  def change
    create_table :starcraft2_coaches do |t|
      t.references :users
      t.references :starcraft2_races
      t.float :rate

      t.timestamps
    end
    add_index :starcraft2_coaches, :users_id
    add_index :starcraft2_coaches, :starcraft2_races_id
  end
end
