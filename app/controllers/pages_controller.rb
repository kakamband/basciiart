class PagesController < ApplicationController
  def home
    @beets = Beet.all
  end
end
