class SuperFan < ApplicationRecord
    has_many :reviews, dependent: :destroy 
    has_many :songs, through: :reviews
    belongs_to :song
end
