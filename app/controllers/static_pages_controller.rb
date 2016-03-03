class StaticPagesController < ApplicationController

  def musique
    @videos = Video.order(created_at: :desc)
  end
end
