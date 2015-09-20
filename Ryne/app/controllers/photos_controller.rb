class PhotosController < ApplicationController
  def create
    @photo = Photo.new(
    photo_data: params[:photo_data],
    geolocation: params[:geolocation],
    emotion: params[:emotion],
    season: params[:season]
    )

    if @photo.save
      redirect_to '/photos'
    else
      render 'new'
    end
  end

  def index
    @photos = Photo.all
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end


  private
    def photo_params
      params.require(:photo).permit(:photo_data, :geolocation ,:emotion ,:season)
    end
end
