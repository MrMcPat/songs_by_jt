class SuperFanSerializer < ActiveModel::Serializer
  attributes :id, :years_of_fandom, :song_id

  belongs_to :song
end
