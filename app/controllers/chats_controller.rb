class ChatsController < ApplicationController
  def index
   @chats = Chat.order('created_at')
 end

 def new
   @chat = Chat.new
 end

 def create
   @chat = Chat.new(chat_params)
   if @chat.save
     flash[:success] = "The chat was added!"
     redirect_to root_path
   else
     render 'new'
   end
 end

 private

 def chat_params
   params.require(:chat).permit(:image, :title)
 end
end
