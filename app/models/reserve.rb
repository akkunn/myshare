class Reserve < ApplicationRecord
  belongs_to :room

  # mount_uploader :img_name, ImgUploader
end
