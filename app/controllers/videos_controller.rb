class VideosController < ApplicationController

  before_action :admin_user, only: [:destroy]
  before_action :logged_in_user

  def index
    @playlist = Video.where(isPlaylist: true).order(created_at: :desc)
    @videos = Video.where(isPlaylist: false).order(created_at: :desc)
  end

  def create
    @video = current_user.videos.build(video_params) if logged_in?
    if @video.save
      flash[:success] = "The video was added!"
      redirect_to videos_path
    else
      render 'new'
    end
  end

  def new
    @video = Video.new
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:success] = "The video was destroyed."
    redirect_to videos_path
  end

  private

  def video_params
    params.require(:video).permit(:link, :isPlaylist)
  end

end
