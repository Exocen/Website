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
    render 'index'
  end

  def create
    @photos = Photo.order('created_at')
    @photo = Photo.new(photo_params)
    if @photo.save
      render json: { message: "success" , fileID: @photo.id}, :status => 200
      # flash[:success] = "The photo was added!"
      # redirect_to photos_path
    else
      render json: { error: @photo.errors.full_messages.join(',')}, :status => 400
      # render 'index'
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
