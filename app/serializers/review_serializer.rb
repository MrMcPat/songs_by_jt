class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :super_fan, :song_id, :rating, :comment

  belongs_to :super_fan
end
