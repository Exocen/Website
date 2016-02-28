class StaticPagesController < ApplicationController
  def home
    @user = User.new
  end

  def musique
    @videos = Video.order(created_at: :desc)
  end
end
