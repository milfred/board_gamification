class Group < ActiveRecord::Base
  has_many :memberships
  has_many :members, through: :memberships
  belongs_to :creator, class_name: "User"

  validates :name, presence: true, uniqueness: true
  validates :creator_id, presence: true

  def member_list
    members.join(",")
  end

  def member_list=(input_members)
    temp_members = input_members.split(",")

    temp_members.each do |email|
      member = User.find_by(email: email)
      Membership.new(member: member)
    end
  end

  def group_games
    members = self.members
    games = []

    members.each do |member|
      games << member.owned_games
    end
    games.flatten
  end

end
