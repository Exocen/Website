class PhotosController < ApplicationController

  def show
    style = params[:style] ? params[:style] : 'med'
    record = Photo.find(params[:id])
    raise 'Error' unless record.image.exists?(style)
    send_data record.image.file_contents(style),
    :filename => record.image_file_name,
    :type => record
    .image_content_type
  end

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
    params.require(:photo).permit(:image, :title, :photo_location_id)
  end
end
