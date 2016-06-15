class Comment < ActiveRecord::Base
  belongs_to :commenter, class_name: "User"
  belongs_to :review

  validates :body, presence: true
  validates :commenter_id, presence: true
  validates :review_id, presence: true
end
