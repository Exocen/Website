class Photo < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  has_attached_file :image, styles: { thumb: "100x100", med: "300x300", large: "800x800" },
  :storage =>  :database,
  :url => '/photos/:id?style=:style'
  validates_attachment_presence :image
  validates_attachment_content_type :image, presence: true, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_size :image, less_than: 4.megabytes
end
