# climb serializer
class ClimbSerializer < ActiveModel::Serializer
  attributes :route_type, :route_grade, :hold_type_of_fall, :fall_notes
end
