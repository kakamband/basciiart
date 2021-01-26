class PagesController < ApplicationController
  def home
    @beets = Beet.all
    @likes = Like.all
    @comments = Comment.all
  end
end
