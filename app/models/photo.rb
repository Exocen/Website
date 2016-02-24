class Photo < ActiveRecord::Base
  belongs_to :photo_locations
  has_attached_file :image, styles: { small: "100x100", med: "300x300", large: "800x800" }
  validates :photo_location_id, presence: true
  validates_attachment_presence  :image
  validates_attachment_content_type :image, presence: true, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
