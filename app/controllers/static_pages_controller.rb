class StaticPagesController < ApplicationController
  def home
  end

  def musique
    @videos = Video.all
  end

  def chat
  end

end
