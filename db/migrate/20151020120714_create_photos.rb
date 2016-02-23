class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.references :locationPhoto , index: true
      t.attachment :image

      t.timestamps null: false
    end
  end
end
