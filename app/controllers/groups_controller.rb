class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    creator_email = "," + current_user.email
    @group = current_user.created_groups.create(name: group_params[:name], description: group_params[:description])
    @group.member_list = group_params[:member_list] + creator_email
    if @group.valid?
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def group_params
    params.require(:group).permit(:name, :description, :member_list)
  end

end
