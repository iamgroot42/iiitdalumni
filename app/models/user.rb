class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  validates :YOJ, presence: true, format: { with: /20[0123456789]\d/ } 
  validates :YOL, presence: true, format: { with: /20[0123456789]\d/ }
  validates :pursued, presence: true
  validates :rollno, presence: true, uniqueness: true
  validates :phone, length: {is: 10} #Flawed
  validates :dp_url, :allow_blank => true ,format: {with: /([a-z\-_0-9\/\:\.]*\.(jpg|jpeg|png|gif))/i }
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
  before_save :set_dp
  
  def set_dp
    self.dp_url = "user-placeholder.png" unless self.dp_url.present?
  end 
end
