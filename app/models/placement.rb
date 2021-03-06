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

  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  has_many :comments, dependent: :destroy
end
