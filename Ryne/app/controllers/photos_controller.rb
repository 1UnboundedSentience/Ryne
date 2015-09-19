class PhotosController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @photos = @photos.create(photos_params)
    redirect_to article_path(@article)
  end

  private
    def photos_params
      params.require(:photos).permit(:commenter, :body)
    end
end
