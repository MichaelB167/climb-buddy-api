# gym serializer
class GymSerializer < ActiveModel::Serializer
  attributes :name, :location, :date_visited
end
