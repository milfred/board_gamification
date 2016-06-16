class Group < ActiveRecord::Base
  has_many :members, through: :memberships
  belongs_to :creator, class_name: "User"

  validates :name, presence: true, uniqueness: true
  validates :creator_id, presence: true
end
