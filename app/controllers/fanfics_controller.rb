class FanficsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def delete
  end

  def show
  end

  private
    def fanfic_params
      params.require(:fanfic).permit(:title,
                                     :author,
                                     :description,
                                     :word_count,
                                     :published,
                                     :updated
      )
    end
end
