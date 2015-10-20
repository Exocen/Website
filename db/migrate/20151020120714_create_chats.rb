class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :title
      t.attachment :image

      t.timestamps null: false
    end
  end
end
