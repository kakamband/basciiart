class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def new
    @beets = Beet.all
    @likes = Like.all
    @like = Like.new
  end

  def create
    @likes = Like.all
    like = Like.create like_params
    redirect_to request.referrer
  end

  def show
  end

  def destroy
    like = Like.find params[:id]
    like.destroy
    redirect_to root_path
  end

  private
  def like_params
    params.require(:like).permit(:beet_id, :user_id)
  end
end
