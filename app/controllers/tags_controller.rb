class TagsController < ApplicationController
  def index
    @tags = Tag.all;
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:success] =  "Successfully created new tag"
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def new
    @tag = Tag.new
  end

  def delete
  end

  def show
  end

  private
    def tag_params
      params.require(:tag).permit(:name, :description)
    end
end
