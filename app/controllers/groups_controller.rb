class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create

    @group = current_user.created_groups.create(name: group_params[:name], description: group_params[:description])
    input_members = group_params[:member_list]
    @group.member_list = input_members
    if @group.valid?
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def show
  end

  private

  def group_params
    params.require(:group).permit(:name, :description, :member_list)
  end

end
