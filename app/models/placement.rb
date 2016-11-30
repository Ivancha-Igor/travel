class Placement < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader

  validates :title,
            presence: true,
            uniqueness: true
  validates :address,
            presence: true
  validates :price,
            presence: true,
            numericality: {greater_than_or_equal_to: 0.01}
  validates :photo,
            presence: true
end
