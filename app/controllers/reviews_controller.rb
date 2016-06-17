class ReviewsController < ApplicationController
  def create
    @review = Review.new(title: params[:review][:title], body: params[:review][:body], rating: params[:review][:rating])
    @review.game_id = params[:game_id]
    @review.reviewer_id = current_user.id
    if @review.save
      p @review
      redirect_to "/games/#{params[:game_id]}"
    else

    end
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to "/games/#{review.game_id}"
  end

end
