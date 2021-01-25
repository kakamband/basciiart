class PagesController < ApplicationController
  def home
    @beets = Beet.all
    @likes = Like.all
  end
end
