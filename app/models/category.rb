class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :games, through: :categorizations

  validates :title, presence: true, uniqueness: true
end
