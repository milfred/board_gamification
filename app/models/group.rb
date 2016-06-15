class Group < ActiveRecord::Base
  has_many :members, through: :memberships
  belongs_to :creator, class_name: "User"
end
