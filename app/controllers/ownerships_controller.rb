class OwnershipsController < ApplicationController
  def create
    @user = User.find(current_user.id).ownerships.create(game_id: params[:game_id])
    redirect_to user_path id: current_user.id
  end

end
