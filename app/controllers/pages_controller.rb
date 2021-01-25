class PagesController < ApplicationController
  def home
    @beets = Beet.all
    @a = AsciiArt.new("https://1.bp.blogspot.com/_2CnQWIZQ3NY/R0piYJTcVNI/AAAAAAAAAUg/MaF7YXX5xhk/s320/aph.jpg")
  end
end
