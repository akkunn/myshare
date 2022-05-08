class Reserve < ApplicationRecord
  belongs_to :room
  belongs_to :user, optional: true


  validates :start_day, presence: true
  validates :end_day, presence: true
  validates :number_people, numericality: true
  validates :sum_price, numericality: true
  # validates :user_id, numericality: true
  validates :room_id, numericality: true
  # mount_uploader :img_name, ImgUploader


  validate :date_before_end

  private

  require "date"

  def date_before_end
    if end_day.nil? || Date.today.nil? || start_day.nil? || end_day <= start_day || end_day < Date.today
      errors.add(:end_day, "は開始日以降の日付を選択してください")
    end
  end

end


