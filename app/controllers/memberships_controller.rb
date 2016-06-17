class MembershipsController < ApplicationController

  def create
    new_member = User.find_by(params[:email])
    group = Group.find_by(params[:id])
  end

  def membership_params
    params.require(:membership).permit(:member_id, :group_id)
  end

end
