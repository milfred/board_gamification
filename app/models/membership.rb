class Membership < ActiveRecord::Base
  belongs_to :member, class_name: "User"
  belongs_to :group

  validates :member, presence: true, on: :update
  validates :group, presence: true, on: :update

  def member
    self.member
  end

  # def member=(email)
  #   member = User.find_by(email: email)
  #   membership.create!(member: member)
  # end
end
