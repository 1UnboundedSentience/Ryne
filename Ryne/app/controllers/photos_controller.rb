class PhotosController < ApplicationController
  def create
    p params
    @photo = Photo.new(
      user_id: session[:user_id],
      photo_data: params[:photo_data],
      geolocation: params[:geolocation],
      emotion: params[:emotion],
      season: params[:season],
      uploaded_photo: params[:uploaded_photo]
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
