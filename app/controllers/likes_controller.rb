class LikesController < ApplicationController
  def index
    @likes = Like.all
  end

  def new
    @like = Like.new
  end

  def created
    
  end

  def edit
  end

  def show
  end
end
