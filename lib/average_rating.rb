module AverageRating
  def average_rating
    ar = 0
    ratings.map { |r| ar = ar+r.score}
    ar/ratings.count
  end
end