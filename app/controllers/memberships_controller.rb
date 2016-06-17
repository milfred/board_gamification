class MembershipsController < ApplicationController

  def create
    group = Group.find_by(membership_params[:id])
    @membership = Membership.new(member: membership_params[:member], group: group)

    if @membership.save
      redirect_to group_path(group)
    else
      render :show
    end
  end

  private
  def membership_params
    params.require(:membership).permit(:member_id, :group_id, :member)
  end

end
