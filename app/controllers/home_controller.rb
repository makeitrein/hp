class HomeController < ApplicationController
  def index
    @fanfic = Fanfic.find(1)
  end
end
