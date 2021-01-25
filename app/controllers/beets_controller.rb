class BeetsController < ApplicationController

  def index
    @beets = Beet.all
  end

  def new
    @beet = Beet.new
  end

  def create
    beet = Beet.create :title => params[:beet][:title], :tags => params[:beet][:tags], :content => AsciiArt.new("#{ params[:beet][:image] }").to_ascii_art(width: 70), :image => params[:beet][:image], :user_id => @current_user.id
    redirect_to root_path # show the beet detail page (soon to add comments and likes)
  end

  def edit
    @beet = Beet.find params[:id]
  end

  def update
    beet = Beet.find params[:id]
    beet.update :title => params[:beet][:title], :tags => params[:beet][:tags], :content => AsciiArt.new("#{ params[:beet][:image] }").to_ascii_art(width: 70), :image => params[:beet][:image], :user_id => params[:beet][:user_id]
    redirect_to beet # redirect back to the beet page
  end

  def show
    @beet = Beet.find params[:id]
    @user = @beet.user
    @comments = @beet.comments
    @likes = Like.all
  end

  def destroy
    beet = Beet.find params[:id]
    beet.destroy
    redirect_to root_path # redirect back to the index
  end

  private
  def beet_params # setup of strong params
    params.require(:beet).permit(:title, :tags, :content, :image, :like_count, :comment_count, :user_id)
  end
end
