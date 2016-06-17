require 'open-uri'

class GamesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @comment = Comment.new
    @review = Review.new
    url ="http://www.boardgamegeek.com/xmlapi/boardgame/#{params[:id]}"
    xml_data = open(url)
    read_file = xml_data
    @response_body = Crack::XML.parse(read_file)
    @reviews = Review.where(game_id: params[:id])
    if @response_body["boardgames"]["boardgame"] == nil
      @response_body = nil
      @error = "Sorry, this game does not exist :("
    end
  end

  def index
    if session[:user_id] != nil
      redirect_to user_path id: session[:user_id]
    end
    @user = User.new
    # xml_data = open('http://www.boardgamegeek.com/xmlapi/search?search=Catan')
    # @response_body = Crack::XML.parse(File.read(xml_data))
  end

  def results
    search_q = params[:search]
    xml_data = open("http://www.boardgamegeek.com/xmlapi/search?search=#{search_q.gsub(" ", "%20")}")
    read_file = xml_data
    @response_body = Crack::XML.parse(read_file)
    if @response_body["boardgames"]["boardgame"] == nil
      @response_body = nil
      @error = "Sorry, no results :("
    end
  end

  def suggested
    @suggested_games = {}
    @random_numbers = Array.new(9) {rand(1..10000)}

    @random_numbers.each do |number|
      url ="http://www.boardgamegeek.com/xmlapi/boardgame/#{number}"
      xml_data = open(url)
      read_file = xml_data
      @response_body = Crack::XML.parse(read_file)
      game = @response_body["boardgames"]["boardgame"]
      game["name"].class == Array ? game_name = game["name"][0] : game_name = game["name"]
      @suggested_games[game_name] = [game["thumbnail"], number]
    end

  end

  def destroy
  end

  def update
  end

  def edit
  end
end
