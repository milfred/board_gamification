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
    @owned_games = Ownership.where(owner_id: @user.id)
    # Need to iterate and get each ownership.game_id
    @users_games_hash = {}
    @owned_games.map do |ownership|
      url ="http://www.boardgamegeek.com/xmlapi/boardgame/#{ownership.game_id}"
      xml_data = open(url)
      read_file = xml_data
      @response_body = Crack::XML.parse(read_file)
      game = @response_body["boardgames"]["boardgame"]
      game["name"].class == Array ? game_name = game["name"][0] : game_name = game["name"]
      @users_games_hash[game_name] = game["thumbnail"]
    end
    p @users_games_hash
  end

private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
