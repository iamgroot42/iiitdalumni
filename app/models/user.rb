class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true
  validates :YOJ, presence: true, format: { with: /20[0123456789]\d/ } 
  validates :YOL, presence: true, format: { with: /20[0123456789]\d/ }
  validates :pursued, presence: true
  validates :rollno, presence: true, uniqueness: true
  validates :phone, length: {is: 10} #Flawed
  validates :ld_url, :allow_blank => true, format: { with: /(ftp|http|https):\/\/?((www|\w\w)\.)?linkedin.com(\w+:{0,1}\w*@)?(\S+)(:([0-9])+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/ }
  validates :dp_url, :allow_blank => true ,format: {with: /([a-z\-_0-9\/\:\.]*\.(jpg|jpeg|png|gif))/i }
  validates_presence_of   :avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_save :set_dp
  
  def set_dp
    self.dp_url = "user-placeholder.png" unless self.dp_url.present?
  end 
end
