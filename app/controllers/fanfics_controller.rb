class FanficsController < ApplicationController
  def index
  end

  def create
    @fanfic = Fanfic.new(fanfic_params)
    if @fanfic.save
      flash[:success] = "Nice job! It's a new fanfic!"
      redirect_to @fanfic
    else
      render 'new'
    end
  end

  def new
    @fanfic = Fanfic.new
  end

  def delete
  end

  def show
    @fanfic = Fanfic.find(params[:id])
    @review = Review.new
  end

  private
    def fanfic_params
      params.require(:fanfic).permit(:title,
                                     :author,
                                     :description,
                                     :word_count,
                                     :published,
                                     :updated,
                                     :relationship_type_id,
                                     :character_ids,
                                     :mpaa_id,
                                     :crossover_ids
      )
    end
end
