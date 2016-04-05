class Video < ActiveRecord::Base
validates :link, presence: true, uniqueness: { case_sensitive: true }, format: { with: /\Ahttps:\/\/www\.youtube\.com\/watch\?v=+.*\z/ }
  belongs_to :user
end
