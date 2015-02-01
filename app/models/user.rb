class User < ActiveRecord::Base
  include AverageRating
  validates :username, uniqueness: true,
            length: { in: 3..15 }
  has_many :ratings, dependent: :destroy
  has_many :beers, through: :ratings
  validates :password, length: { minimum: 4 }
  validates :password, format: { with: /\A(?=.*?[A-Z])(?=.*?[0-9]).{4,}\z/}
  has_secure_password
end
