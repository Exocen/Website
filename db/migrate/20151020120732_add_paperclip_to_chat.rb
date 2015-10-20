class AddPaperclipToChat < ActiveRecord::Migration

  def up
   add_attachment :chats, :avatar
 end

 def down
   remove_attachment :chats, :avatar
 end
end
