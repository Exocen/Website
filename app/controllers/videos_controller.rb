class VideosController < ApplicationController

  def musique
    @video = Video.new
    @videos = Video.order(created_at: :desc)
  end

  def create
    @videos = Video.order(created_at: :desc)
    @video = Video.new(video_params)
    if @video.save
      flash[:success] = "The video was added!"
      redirect_to musique_path
    else
      render 'musique'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:success] = "The chat was destroyed."
    redirect_to musique_path
  end

  private

  def video_params
    params.require(:video).permit(:link)
  end

end
