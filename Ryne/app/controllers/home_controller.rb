class HomeController < ApplicationController
  def index
    authenticate_user!
    if user_signed_in?
      p "user is logged in"
    end
  end
end
