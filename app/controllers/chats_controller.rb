class ChatsController < ApplicationController

  def index
   @chat = Chat.new
   @chats = Chat.order('created_at')
 end

 def create
   @chat = Chat.new(chat_params)
   @chats = Chat.order('created_at')
   if @chat.save
     flash[:success] = "The chat was added!"
     redirect_to chats_path
   else
     render 'index'
   end
 end

 def destroy
   @chat = Chat.find(params[:id])
   @chat.destroy
   flash[:success] = "The chat was destroyed."
   redirect_to chats_path
 end

 private

 def chat_params
   params.require(:chat).permit(:image, :title)
 end
end
