class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  validates :iamge_url, format: { with: /([a-z\-_0-9\/\:\.]*\.(jpg|jpeg|png|gif))/i }
  before_save :set_pic

  def set_pic
    self.image_url = "blog-placeholder.jpg" unless self.image_url.present?
  end 
end
