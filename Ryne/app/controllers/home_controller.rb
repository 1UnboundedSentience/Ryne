class HomeController < ApplicationController
  def index
    authenticate_user!
    @photos = Photo.all
    @user = User.all
    if user_signed_in?
      p "user is logged in"
    end
  end
end
