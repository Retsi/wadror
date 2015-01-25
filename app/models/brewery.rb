class Brewery < ActiveRecord::Base
  include AverageRating
	has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  def print_report
    puts name
    puts "established at year #{year}"
    puts "number of beers #{beers.count}"
  end

  def restart
    self.year = 2015
    puts "changed year to #{year}"
  end

 # def average_rating
 #   ar = 0
 #   ratings.map { |r| ar = ar+r.score}
 #   ar/ratings.count
 # end

end
