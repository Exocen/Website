class AddAttachmentAvatarToChats < ActiveRecord::Migration
  def self.up
    change_table :chats do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :chats, :avatar
  end
end
