class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: "User"
  belongs_to :game

  validates :rating, presence: true, numericality: { greater_than: 0, less_than: 6 }
  validates :title, presence: true
  validates :reviewer_id, presence: true
  validates :game_id, presence: true
end
