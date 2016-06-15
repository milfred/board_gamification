class Category < ActiveRecord::Base
  has_many :games, through: :categorizations
end
