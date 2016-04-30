# gym model
class Gym < ActiveRecord::Base
  has_many :climbs, inverse_of: :gym
  belongs_to :user, inverse_of: :gyms
end
