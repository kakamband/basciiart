class BeetsController < ApplicationController

  def index
    @beets = Beet.all
  end

  def new
    @beet = Beet.new
  end

  def create
    beet = Beet.create beet_params
    redirect_to beet # show the beet detail page (soon to add comments and likes)
  end

  def edit
    @beet = Beet.find params[:id]
  end

  def update
    beet = Beet.find params[:id]
    beet.update beet_params
    redirect_to beet # redirect back to the beet page
  end

  def show
    @beet = Beet.find params[:id]
  end

  def destroy
    beet = Beet.find params[:id]
    beet.destroy
    redirect_to beets_path # redirect back to the index
  end

  private
  def beet_params # setup of strong params
    params.require(:beet).permit(:title, :tags, :content, :image, :like_count, :comment_count, :user_id)
  end
end
