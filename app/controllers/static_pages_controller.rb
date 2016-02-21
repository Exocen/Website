class StaticPagesController < ApplicationController
  def home
  end

  def musique
    @videos = Video.order(created_at: :desc)
  end

  def photo
    @photos = Photo.all
    @nphoto = Photo.count
  end

end
