# add user ref to gyms
class AddUserRefToGyms < ActiveRecord::Migration
  def change
    add_reference :gyms, :user, index: true, foreign_key: true
  end
end
