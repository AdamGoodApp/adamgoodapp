class BooksController < ApplicationController

  def index
    gon.pubnub = {sub: ENV["pubnub_sub"], pub: ENV["pubnub_pub"]}
  end

  def lights
    Vision.all_on!
  end

  private

  def book_params
    params.require(:books).permit!
  end

end