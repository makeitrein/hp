class HomeController < ApplicationController
  def index
    @fanfic = Fanfic.last
  end
end
