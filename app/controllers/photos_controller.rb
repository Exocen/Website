class PhotosController < ApplicationController
before_action :logged_in_user

  def show
    #style = params[:style] ? params[:style] : 'med'
    style = "large"
    record = Photo.find(params[:id])
    raise 'Error' unless record.image.exists?(style)
    send_data record.image.file_contents(style),
    :filename => record.image_file_name,
    :type => record
    .image_content_type
  end

  def index
    @photos = Photo.where("user_id = ?", current_user)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.build(photo_params) if logged_in?
    #Photo.new(photo_params)
    if @photo.save
      render json: { message: "success" , fileID: @photo.id}, :status => 200
      # flash[:success] = "The photo was added!"
      # redirect_to photos_path
    else
      render json: { error: @photo.errors.full_messages.join(',')}, :status => 400
      # render 'index'
    end
  end

  def delete
    @photos = Photo.where("user_id = ?", current_user)
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:success] = "The photo was destroyed."
    redirect_to delete_photo_path
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :title)
  end
end
