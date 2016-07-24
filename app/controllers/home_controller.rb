class HomeController < ApplicationController
  def index
    @apologize = Apologize.order("RANDOM()").first
  end
end
