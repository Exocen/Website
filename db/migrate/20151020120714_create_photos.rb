class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.references :photo_location  , index: true
      t.attachment :image

      t.timestamps null: false
    end
  end
end
