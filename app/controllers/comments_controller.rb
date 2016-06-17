class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    p @comment

    if @comment.save
      redirect_to comments_path
    else
      render 'new'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
  end

  def delete
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
