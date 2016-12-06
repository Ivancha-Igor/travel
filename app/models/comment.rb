class Comment < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :placement

  validates :body,
            presence: true
  validates_presence_of :user
end
