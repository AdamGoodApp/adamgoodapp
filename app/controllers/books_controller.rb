class BooksController < ApplicationController

  def index
    gon.pubnub = {sub: ENV["pubnub_sub"], pub: ENV["pubnub_pub"]}
  end

end