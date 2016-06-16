class UsersController < ApplicationController

  def new
    @user = User.new(params[:user])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect to "/users/show"
    else
      render "new"
    end
  end

    private

    def user_params
      params.require(:user).permit(:usermane, :email, :password)
    end

end
