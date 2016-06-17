class CommentsController < ApplicationController

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.review_id = params[:review_id]
    @comment.commenter_id = current_user.id


    if @comment.save
      redirect_to "/games/#{params[:game_id]}"
    else
      redirect_to "http://oprah.com"
    end
  end

  def delete
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
