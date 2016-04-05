class Video < ActiveRecord::Base
validates :link, presence: true, uniqueness: { case_sensitive: true }, format: { with: \A((https:\/\/www\.youtube\.com\/watch\?v=)+.*)\z }
  belongs_to :user
end
