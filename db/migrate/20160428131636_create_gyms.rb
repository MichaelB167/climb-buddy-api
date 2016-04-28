# gym migration
class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :location
      t.date :date_visited

      t.timestamps null: false
    end
  end
end
