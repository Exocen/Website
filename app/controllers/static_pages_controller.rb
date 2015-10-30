class StaticPagesController < ApplicationController
  def home
  end

  def musique
    @videos = Video.order(created_at: :desc)
  end

  def chat
    @chats = Chat.all
    @nchat = Chat.count
  end

end
