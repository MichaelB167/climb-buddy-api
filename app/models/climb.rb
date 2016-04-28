# climb model
class Climb < ActiveRecord::Base
  belongs_to :gym, inverse_of: :climbs
  belongs_to :user, inverse_of: :climbs
end
