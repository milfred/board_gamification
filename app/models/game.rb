class Game < ActiveRecord::Base
  has_many :owners, through: :ownerships
  has_many :reviews
  has_many :categories, through: :categorizations
end
