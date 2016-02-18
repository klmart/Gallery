class ImagesController < ApplicationController
  def new
<<<<<<< HEAD
    @image = Image.new
  end
  def create
    @image = Image.new(image_params)
  end

  def index
  end
<<<<<<< HEAD

  private
  def image_params
    params.require(:user).permit(:title)
  end
=======
>>>>>>> origin/iss1
end
