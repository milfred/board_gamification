class Categorization < ActiveRecord::Base
  belongs_to :game, :category

  validates :game_id, presence: true
  validates :category_id, presence: true
end
