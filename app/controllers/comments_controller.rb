class CommentsController < ApplicationController

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.commenter_id = current_user.id

    if @comment.save
      redirect_to "/games/#{params[:game_id]}"
    # else
    #   render 'new'
    end
  end

  def delete
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
