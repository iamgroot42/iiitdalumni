class Event < ActiveRecord::Base
  belongs_to :user
  has_many :user
  mount_uploader :avatar, AvatarUploader
  validates_processing_of :avatar
end
