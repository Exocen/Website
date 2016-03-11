class Video < ActiveRecord::Base
validates :link, presence: true, uniqueness: { case_sensitive: true }
  belongs_to :user
end
