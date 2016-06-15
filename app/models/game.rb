class Game < ActiveRecord::Base
  has_many :owners, through: :ownerships
  has_many :reviews
  has_many :categories, through: :categorizations

  validates :name, presence: true, uniqueness: true

  def average_rating
    reviews = this.reviews
    reviews.map { |review| review.rating }.reduce(:+) / reviews.length
  end
end
