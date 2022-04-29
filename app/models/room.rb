class Room < ApplicationRecord
  mount_uploader :img_name, ImgUploader
end
