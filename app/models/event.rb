class Event < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true,length: {minimum: 25}
  validates :contact, presence: true 
  validates :venue, presence: true
  mount_uploader :avatar, AvatarUploader
  validates_processing_of :avatar
end
