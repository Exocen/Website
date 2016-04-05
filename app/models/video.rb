class Video < ActiveRecord::Base
validates :link, presence: true, uniqueness: { case_sensitive: true }, format { with: \A((https:\/\/www\.youtube\.com\/watch\?v=)+[a-zA-Z0-9]*)\z/i, on: :create }
  belongs_to :user
end
