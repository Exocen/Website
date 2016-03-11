class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.attachment :image
      t.references :user , index: true
      t.timestamps null: false
    end
  end
end
