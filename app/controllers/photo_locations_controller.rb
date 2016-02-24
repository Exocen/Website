class PhotoLocationsController < ApplicationController

  def location
    @photoLocation = PhotoLocation.new
    @photoLocations = PhotoLocation.order('created_at')
  end

  def create
    @photoLocation = PhotoLocation.new(photoLocation_params)
    if @photoLocation.save
      flash[:success] = "The photoLocation was added!"
      redirect_to location_path
    else
      redirect_to location_path
    end
  end

  def destroy
    @photoLocation = PhotoLocation.find(params[:id])
    @photoLocation.destroy
    flash[:success] = "The photoLocation was destroyed."
    redirect_to location_path
  end

private
  def photoLocation_params
    params.require(:photo_location).permit(:name)
  end

end
