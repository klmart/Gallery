class ImagesController < ApplicationController
  def new
    @image = Image.new
  end
  def create
    @image = Image.new(image_params)
  end

  def index
  end

  private
  def image_params
    params.require(:user).permit(:title)
  end
end
