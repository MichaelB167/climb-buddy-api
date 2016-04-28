# climbs migration
class CreateClimbs < ActiveRecord::Migration
  def change
    create_table :climbs do |t|
      t.string :route_type
      t.integer :route_grade
      t.string :hold_type_of_fall
      t.string :fall_notes

      t.timestamps null: false
    end
  end
end
