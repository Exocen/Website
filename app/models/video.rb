class Video < ActiveRecord::Base
validates :link, presence: true
  belongs_to :user
end
