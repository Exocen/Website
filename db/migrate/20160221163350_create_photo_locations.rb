class CreatePhotoLocations < ActiveRecord::Migration
  def change
    create_table :photo_locations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
