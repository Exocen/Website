class Chat < ActiveRecord::Base
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "800x800" }
  validates_attachment_presence  :image
  validates_attachment_content_type :image, presence: true, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
