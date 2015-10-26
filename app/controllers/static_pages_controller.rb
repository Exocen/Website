class StaticPagesController < ApplicationController
  def home
  end

  def musique
    @videos = Video.all
  end

  def chat
    @chats = Chat.all
    @nchat = Chat.count
  end

end
