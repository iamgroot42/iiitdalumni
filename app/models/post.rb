class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  mount_uploader :avatar, AvatarUploader
  validates_processing_of :avatar
end
