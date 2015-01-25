class Beer < ActiveRecord::Base
  include AverageRating
	belongs_to :brewery
  has_many :ratings, dependent: :destroy



 # def average_rating
 #   ar = 0
 #   ratings.map { |r| ar = ar+r.score}
    
  #  ratings.each do |rating|
  #    ar = ar + rating.score
  #  end
 #   ar/ratings.count
 # end

  def to_s
    "#{name} #{brewery.name}"
  end

end
