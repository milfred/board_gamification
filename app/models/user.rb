class User < ActiveRecord::Base
  has_many :memberships, foreign_key: :member_id
  has_many :created_groups, foreign_key: :creator_id
  has_many :comments, foreign_key: :commenter_id
  has_many :reviews, foreign_key: :reviewer_id
  has_many :ownerships, foreign_key: :owner_id
  has_secure_password
end
