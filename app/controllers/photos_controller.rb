class PhotosController < ApplicationController

  def index
    @photo = Photo.new
    @photos = Photo.order('created_at')
  end

  def create
    @photos = Photo.order('created_at')
    if(params.has_key?(:photo))
      @photo = Photo.new(photo_params)
      if @photo.save
        flash[:success] = "The photo was added!"
        redirect_to photos_path
      else
        render 'index'
      end
    else
      @photo = Photo.new()
      render 'index'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:success] = "The photo was destroyed."
    redirect_to photos_path
  end

  private

  def photo_params
      params.require(:photo).permit(:image, :title)
  end
end
