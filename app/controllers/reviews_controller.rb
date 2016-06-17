class ReviewsController < ApplicationController
  def create
    @review = Review.new
    @review.game_id = params[:game_id]
    @review.reviewer_id = current_user.id
    if @review.save
      redirect_to "/games/#{params[:game_id]}"
    else
      "bananas"
    end
  end

  def new

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
