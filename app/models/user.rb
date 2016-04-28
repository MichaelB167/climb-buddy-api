# user model
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :gyms, inverse_of: :user
  has_many :climbs, inverse_of: :user
end
