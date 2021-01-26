class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end


  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create comment_params
    redirect_to root_path
  end

  def show
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :beet_id, :user_id)
  end
end
