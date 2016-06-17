class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      # redirect_to register_path
      redirect_to user_path id: session[:user_id]
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
