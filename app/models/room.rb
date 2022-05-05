class Room < ApplicationRecord
  mount_uploader :img_name, ImgUploader

  belongs_to :user
  has_many :reserves

end
