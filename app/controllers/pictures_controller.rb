class PicturesController < ApplicationController
    before_action :authenticate_user!
    def new
      @picture = Picture.new
    end
    def create
      @picture = Picture.new(picture_params)
      if @picture.save
        redirect_to pictures_url
      else
        render 'new'
      end
    end

    def index
      @pictures = Picture.all
    end

    private
    def picture_params
      params.require(:picture).permit(:title)
    end
  end

