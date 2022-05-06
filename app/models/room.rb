class Room < ApplicationRecord
  mount_uploader :img_name, ImgUploader

  belongs_to :user
  has_many :reserves

  validates :name, presence: true
  validates :introduction, length: {in: 1..100}
  validates :price, numericality: true
  validates :address, presence: true
  validates :img_name, presence:true
  validates :user_id, numericality:true
end

