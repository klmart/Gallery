class ImagesController < ApplicationController
  before_action :authenticate_user!
  def new
    @image = Image.new
  end
  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_url
    else
      render 'new'
    end
  end

  def index
  end

  private
  def image_params
    params.require(:image).permit(:title)
  end
end
