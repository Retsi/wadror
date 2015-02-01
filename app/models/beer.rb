class Beer < ActiveRecord::Base
  include AverageRating
	belongs_to :brewery
  has_many :ratings, dependent: :destroy
  has_many :users, through: :ratings
  has_many :raters, -> { uniq }, through: :ratings, source: :user
  validates :name, presence: true



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
