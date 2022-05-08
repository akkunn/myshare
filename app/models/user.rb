class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :imr_name, ImgUploader




  has_many :rooms
  has_many :reserves

  # validates :imr_name, presence: true
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  # validates :introduction, presence: true
  
end
