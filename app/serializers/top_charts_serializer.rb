class TopChartsSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_reviews, :average_rating

  def total_reviews
    review_count = Song.all.map do |song|
      song.reviews.count
    end
    review_count.max_by do |count|
      count
    end
  end

  def average_rating
    most_reviewed = Song.all.max_by do |song|
      song.reviews.count
    end
    most_reviewed.reviews.average(:rating).to_f
  end
end
