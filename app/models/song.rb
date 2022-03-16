class Song < ApplicationRecord
    has_many :reviews
    has_many :super_fans

    def self.most_popular
        Song.all.max_by do |song|
            song.reviews.count
        end
    end

end
