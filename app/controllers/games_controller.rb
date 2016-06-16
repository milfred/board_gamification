require 'open-uri'


class GamesController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def index
    xml_data = open('http://www.boardgamegeek.com/xmlapi/search?search=Catan')
    @response_body = Crack::XML.parse(File.read(xml_data))
  end

  def destroy
  end

  def update
  end

  def edit
  end

end
