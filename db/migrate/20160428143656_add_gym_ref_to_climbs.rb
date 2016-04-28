class AddGymRefToClimbs < ActiveRecord::Migration
  def change
    add_reference :climbs, :gym, index: true, foreign_key: true
  end
end
