class FanficsController < ApplicationController
  def index
  end

  def show
    @fanfic = Fanfic.find(params[:id])
    @review = Review.new
  end

  def new
    @fanfic = Fanfic.new
  end

  def edit
    @fanfic = Fanfic.find(params[:id])
  end

  def create

    @fanfic = Fanfic.new(fanfic_params)
    if @fanfic.save
      flash[:success] = "Nice job! It's a new fanfic!"
      redirect_to @fanfic
    else
      redirect_to 'new', alert: "Failed to create fanfic"
    end
  end

  def update
    @fanfic = Fanfic.find(params[:id])
    if @fanfic.update_attributes(fanfic_params)
      redirect_to @fanfic, notice: "Updated #{@fanfic.title}"
    else
      redirect_to 'edit'
    end
  end


  def delete
  end



  private
    def fanfic_params
      params.require(:fanfic).permit(:title,
                                     :author,
                                     :url,
                                     :description,
                                     :word_count,
                                     :published,
                                     :updated,
                                     :relationship_type_id,
                                     :mpaa_id,
                                     :crossover_ids,
                                     :character_ids
      )
    end
end
