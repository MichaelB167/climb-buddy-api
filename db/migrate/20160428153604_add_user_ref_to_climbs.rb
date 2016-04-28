# add user ref to climbs
class AddUserRefToClimbs < ActiveRecord::Migration
  def change
    add_reference :climbs, :user, index: true, foreign_key: true
  end
end
