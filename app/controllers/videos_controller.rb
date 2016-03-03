class VideosController < ApplicationController
before_action :logged_in_user

  def index
    @videos = Video.order(created_at: :desc)
  end

  def create
    @video = current_user.videos.build(video_params) if logged_in?
    if @video.save
      flash[:success] = "The video was added!"
      redirect_to videos_path
    else
      render 'video'
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
    params.require(:video).permit(:link)
  end

end
